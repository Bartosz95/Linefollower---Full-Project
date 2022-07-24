/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2017 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f0xx_hal.h"
#include "adc.h"
#include "dma.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/
	/*
	 * 0 - robot wylaczony
	 * 1 - robot w trybie linefollowera
	 * 2 - robot w trybie recznym
	 */
	uint8_t wlaczony=0,start=0; // uruchamia dzialanie robota
	/*ZMIENNE DLA TRYBU AUTOMATYCZNEGO*/
	uint16_t T[8]; // zczytuje wartoœc z czujnikow
	uint16_t petla=0; // gdy osiagnie wartosc 100 to wykonuje sie petla algorytmu
	int blad=0, pop_blad=0, Kp=1, Kd=0;
	uint8_t przestrzelony=0;
	//parametry do regulacji
	uint8_t waga=20;
	uint16_t prog=2800;
	int V_zad = 300;

	/*ZMIENNE DLA TRYBU RECZNEGO*/
	uint8_t Received;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void Error_Handler(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);
/*
 * parametr to trym uruchomienia reczny=2 badz automatyczny=1
 */
void uruchom(uint8_t tryb);
void PWM(int Lewy,int Prawy);
void kalibracja();
int licz_blad();
int PD();
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC_Init();
  MX_TIM1_Init();
  MX_TIM14_Init();
  MX_USART1_UART_Init();
  MX_TIM6_Init();

  /* USER CODE BEGIN 2 */
  HAL_ADC_Start_DMA(&hadc,T,8);
  HAL_TIM_Base_Start_IT(&htim6);
  HAL_UART_Receive_IT(&huart1, &Received, 1);
  wlaczony=0;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */

  }
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI14|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSI14State = RCC_HSI14_ON;
  RCC_OscInitStruct.HSI14CalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL3;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK1;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* USER CODE BEGIN 4 */
/*
 * FUNKCJA PRZYCISKOW
 * - START_BUTTON URUCHAMIA SILNIKI
 * przycisk znajduje siê po lewej stronie od gniazda miniUSB
 *
 * - RESET_BUTTON resetuje program
 * znajduje siê po lewej stronie od gniazda USB
 *
 * - BUTTON
 */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
	if((GPIO_Pin == START_BUTTON_Pin)){
		uruchom(1);
		//kalibracja();

	}else if(GPIO_Pin == BUTTON_Pin){
		uruchom(2);
	}
}
/*
 * G£ÓWNE PRZERWANIE
 * wykonywane z f=100Hz
 */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
 if((htim->Instance == TIM6)){
	 if(wlaczony==1){
		 petla++;
		if(petla==100){
			 petla=0;
			 blad=licz_blad();
			 int regulacja=PD();
			 PWM(V_zad + regulacja, V_zad - regulacja);
		}
	}/*else if(wlaczony==2){
		petla++;
		 if(petla==1000){
			 petla=0;
			 static uint16_t cnt = 0; // Licznik wyslanych wiadomosci
			 uint8_t data[50];// Tablica przechowujaca wysylana wiadomosc.
			 uint16_t size = 0; // Rozmiar wysylanej wiadomosci ++cnt; // Zwiekszenie licznika wyslanych wiadomosci.

			 ++cnt; // Zwiekszenie licznika wyslanych wiadomosci.
			 size = sprintf(data, "Liczba wyslanych wiadomosci: %d.\n\r", cnt); // Stworzenie wiadomosci do wyslania oraz przypisanie ilosci wysylanych znakow do zmiennej size.
			 HAL_UART_Transmit_IT(&huart1, data, size); // Rozpoczecie nadawania danych z wykorzystaniem przerwan
			// HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin); // Zmiana stanu pinu na diodzie LED*
		 }
	}*/
 }
}

/*
 * FUNKCJA STARTU
 *funkcja startuje robota
 */
void uruchom(uint8_t tryb){
	if(wlaczony==0){
			wlaczony=tryb;
			PWM(0,0);
			HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_4);
			HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_1);HAL_GPIO_WritePin(LED_GPIO_Port,LED_Pin,SET);
			}
	else if((wlaczony==1)||(wlaczony==2)){
			wlaczony=0;
			PWM(0,0);
			HAL_TIM_PWM_Stop(&htim1,TIM_CHANNEL_4);
			HAL_TIM_PWM_Stop(&htim1,TIM_CHANNEL_1);
			}
}
/*
 * PWM
 * wartosc maxymalna 1000
 * wartosc minimalna -1000
 * po przekroczeniu tej wartosci wartosc i bedzie wynosila max lub min
 *
 * wartosc w granicach -50< x <50 jest zbyt mala by ruszyc robotem
 */
void PWM(int Lewy,int Prawy){
	//________LEWY SILNIK______________
	if(Lewy>0){
		HAL_GPIO_WritePin(L_TYL_GPIO_Port,L_TYL_Pin,RESET);
		HAL_GPIO_WritePin(L_PRZOD_GPIO_Port,L_PRZOD_Pin,SET);
		if(Lewy>=1000){
			TIM1->CCR1=1000;
			}
		else{
			TIM1->CCR1=Lewy;
			}
		}
	else if(Lewy<0){
		HAL_GPIO_WritePin(L_TYL_GPIO_Port,L_TYL_Pin,SET);
		HAL_GPIO_WritePin(L_PRZOD_GPIO_Port,L_PRZOD_Pin,RESET);
		if(Lewy<=-1000){
			TIM1->CCR1=-1000;
			}
		else{
			TIM1->CCR1=Lewy;
			}
		}
	else if(Lewy==0){
		HAL_GPIO_WritePin(L_TYL_GPIO_Port,L_TYL_Pin,RESET);
		HAL_GPIO_WritePin(L_PRZOD_GPIO_Port,L_PRZOD_Pin,RESET);
		TIM1->CCR1=0;
		}
	//________PRAWY SILNIK______________
	if(Prawy>0){
		HAL_GPIO_WritePin(R_TYL_GPIO_Port,R_TYL_Pin,RESET);
		HAL_GPIO_WritePin(R_PRZOD_GPIO_Port,R_PRZOD_Pin,SET);
		if(Prawy>=1000){
			TIM1->CCR4=1000;
		}else{
			TIM1->CCR4=Prawy;
		}
	}else if(Prawy<0){
		HAL_GPIO_WritePin(R_TYL_GPIO_Port,R_TYL_Pin,SET);
		HAL_GPIO_WritePin(R_PRZOD_GPIO_Port,R_PRZOD_Pin,RESET);
		if(Prawy<=-1000){
			TIM1->CCR4=-1000;
		}else{
			TIM1->CCR4=Prawy;
		}
	}else if(Prawy==0){
		HAL_GPIO_WritePin(R_TYL_GPIO_Port,R_TYL_Pin,RESET);
		HAL_GPIO_WritePin(R_PRZOD_GPIO_Port,R_PRZOD_Pin,RESET);
		TIM1->CCR4=0;
	}
}
void kalibracja(){
	prog=(T[3]-((T[0]+T[1]+T[2]+T[5]+T[6]+T[7])/6))/2;
	HAL_GPIO_TogglePin(LED_GPIO_Port,LED_Pin);
}
int licz_blad(){
	int ilosc=0;
	int waga=10;
	int err=0;
	if(T[0]>prog){
		err+=-4*waga;
		ilosc+=1;}
	if(T[1]>prog){
		err+=-3*waga;
		ilosc+=1;}
	if(T[2]>prog){
		err+=-2*waga;
		ilosc+=1;}
	if(T[3]>prog){
		err+=-0*waga; //poniewaz T[4] nie dziala tu bedzie wartosc 1
		ilosc+=0;}
	if(T[4]>prog){
		err+=1*waga;
		ilosc+=1;}
	if(T[5]>prog){
		err+=2*waga;
		ilosc+=1;}
	if(T[6]>prog){
		err+=3*waga;
		ilosc+=1;}
	if(T[7]>prog){
		err+=4*waga;
		ilosc+=1;}

	if(ilosc!=0){
		err/=ilosc;
		pop_blad=err;
	}else{
		if(err>3*waga){
			err=5*waga;
			przestrzelony=1;
		}else if(err<-3*waga){
			err=-5*waga;
			przestrzelony=2;
		}else{
			err=0;}
	}
	if(przestrzelony == 1 && err >= 0){
		przestrzelony = 0;
	}else if(przestrzelony == 2 && err <= 0){
		przestrzelony = 0;
	}
	return err;
}
int PD(){
	int rozniczka = blad - pop_blad;
	pop_blad = blad;
	return Kp*blad + Kd*rozniczka;
}
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {
	//if(wlaczony==2){
		uint8_t Data[40];
		uint16_t size = 0;
		switch (atoi(&Received)) {
	 	 	 case 0:
	 	 		 PWM(0,0);
	 	 		 break;
	 	 	 case 1:
	 	 		 PWM(V_zad,V_zad);
	 	 		 break;
	 	 	 case 2:
	 	 		 PWM(-V_zad,-V_zad);
	 	 		 break;
	 	 	 case 3:
	 	 		 PWM(V_zad*1.5,V_zad);
	 	 		 break;
	 	 	 case 4:
	 	 		 PWM(-V_zad,-V_zad);
	 	 		 break;
	 	 	 case 5:
	 	 		 PWM(V_zad*1.5,V_zad*1.5);
				 break;
	 	 	 default: // Jezeli odebrano nieobslugiwany znak
	 	 		 size = sprintf(Data, "Odebrano nieznany znak: %c\n\r", Received);
	 	 		 break;
		}
		HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
	 size = sprintf(Data, "Odebrana wiadomosc: %s\n\r",&Received);
	 HAL_UART_Transmit_IT(&huart1, Data, 40); // Rozpoczecie nadawania danych z wykorzystaniem przerwan
	 HAL_UART_Receive_IT(&huart1, &Received, 1); // Ponowne w³¹czenie nas³uchiwania




	//}
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler */
  /* User can add his own implementation to report the HAL error return state */
  while(1) 
  {
  }
  /* USER CODE END Error_Handler */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
