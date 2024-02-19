# UART

## 1. 什么是 UART 通信

UART(Universal Asynchronous Receiver/Transmitter)指的是**通用异步收发器**。

串口通信是单片机最为常用的一种通信方式，通常用于单片机和单片机，单片机和电脑之间的通信。在串口通信中，数据是使用单线逐位传输的。在双向通信中，只需要两条线就可以传输数据。根据应用和系统要求，串口通信需要的电路和接线更少，从而成为成本低廉，应用广泛的一种通信方式。

## 2. 串口通信的外设

在单片机和单片机之间，我们可以通过连接 RT-TX，TX-RX 的方式直接进行通信。

下面是典型的接线示意图：

![UART接线示意图](Images/0-1.png)

而电脑和单片机之间的通信就需要另外的外设。因为现在大部分的电脑以不再使用笨重的 9 针串行接口，更多的是使用 USB 虚拟串口，因此单片机和电脑通信都需要一个**USB 转串口芯片**，通常在单片机开发板上都是做好这样的外设的。

下面是一个典型的 CH340C 原理图：

![CH340C](Images/0-2.png)