#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtBluetooth>
QSerialPort serial;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->listWidget->hide();
    connect(agent,SIGNAL(deviceDiscovered(QBluetoothDeviceInfo),this,SLOT(deviceDiscovered(QBluetoothDeviceInfo));
        agent->start();
    socket = new QBluetoothSocket (QBluetoothServiceInfo::RfcommProtocol);

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_find_clicked()
{
    ui->listWidget->show();
    ui->listWidget->clear();
    agent->stop();
    agent->start();
}

void MainWindow::on_on_clicked()
{
socket->write("h");
}

void MainWindow::on_off_clicked()
{
socket->write("b");
}

void MainWindow::deviceDiscovered(const QBluetoothDeviceInfo &device)
{
   ui->listWidget->addItem(device.address().toString());
}

void MainWindow::on_listWidget_itemClicked(QListWidgetItem *item)
{
string=item->text();

static const QString serviceUuid(QStringLiteral("??"));

socket->connectToService(QBluetoothAddress(string),QBluetoothUuid(serviceUuid),QIODevice::ReadWrite);
}
