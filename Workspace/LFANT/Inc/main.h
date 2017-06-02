/**
  ******************************************************************************
  * File Name          : main.h
  * Description        : This file contains the common defines of the application
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
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H
  /* Includes ------------------------------------------------------------------*/

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private define ------------------------------------------------------------*/
#define COUNTER_PERIOD 999
#define PRESCALER 47
#define PRESCALER_RGB 199

#define OSC_IN_Pin GPIO_PIN_0
#define OSC_IN_GPIO_Port GPIOF
#define OSC_OUT_Pin GPIO_PIN_1
#define OSC_OUT_GPIO_Port GPIOF
#define T1_Pin GPIO_PIN_0
#define T1_GPIO_Port GPIOA
#define T2_Pin GPIO_PIN_1
#define T2_GPIO_Port GPIOA
#define T3_Pin GPIO_PIN_2
#define T3_GPIO_Port GPIOA
#define T4_Pin GPIO_PIN_3
#define T4_GPIO_Port GPIOA
#define T5_Pin GPIO_PIN_4
#define T5_GPIO_Port GPIOA
#define T6_Pin GPIO_PIN_5
#define T6_GPIO_Port GPIOA
#define T7_Pin GPIO_PIN_6
#define T7_GPIO_Port GPIOA
#define T8_Pin GPIO_PIN_7
#define T8_GPIO_Port GPIOA
#define LED_B_Pin GPIO_PIN_0
#define LED_B_GPIO_Port GPIOB
#define LIPOL_POMIAR_Pin GPIO_PIN_1
#define LIPOL_POMIAR_GPIO_Port GPIOB
#define LED_R_Pin GPIO_PIN_10
#define LED_R_GPIO_Port GPIOB
#define LED_G_Pin GPIO_PIN_11
#define LED_G_GPIO_Port GPIOB
#define L_TYL_Pin GPIO_PIN_14
#define L_TYL_GPIO_Port GPIOB
#define L_PRZOD_Pin GPIO_PIN_15
#define L_PRZOD_GPIO_Port GPIOB
#define L_PWM_Pin GPIO_PIN_8
#define L_PWM_GPIO_Port GPIOA
#define R_PRZOD_Pin GPIO_PIN_9
#define R_PRZOD_GPIO_Port GPIOA
#define R_TYL_Pin GPIO_PIN_10
#define R_TYL_GPIO_Port GPIOA
#define R_PWM_Pin GPIO_PIN_11
#define R_PWM_GPIO_Port GPIOA
#define START_BUTTON_Pin GPIO_PIN_12
#define START_BUTTON_GPIO_Port GPIOA
#define SPI1_SS1_Pin GPIO_PIN_6
#define SPI1_SS1_GPIO_Port GPIOB
#define SPI1_SS2_Pin GPIO_PIN_7
#define SPI1_SS2_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

/**
  * @}
  */ 

/**
  * @}
*/ 

#endif /* __MAIN_H */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
