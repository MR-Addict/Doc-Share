# 第八章——串口通信UART

## 1. Arduino的Serial

Arduino AVR开发板只有一个UART，直接和USB相连。当然，你也可以通过使用RX(D0)和TX(D1)进行串口通信，但是，同时只能使用一个，任意一处被占用都无法正常通信。

在mega板上，一共有4个串口，默认的UART和USB相连，因此你除了可以使用**Serial**之外，还可以使用**Serial1**，**Serial2**，**Serial3**。

## 2. begin

语法：

```cpp
Serial.begin(speed);
Serial.begin(speed, config);
```

speed参数：设置波特率，常用的波特率有300，600，1200，2400，4800，9600，14400，19200，28800，38400，57600，115200等。

config参数：Arduino默认设置是一个起始位，一个终止位，没有校验位，你可以通过第二个可选参数设置进行设置，下面是可供选择的参数：

- SERIAL_5N1
- SERIAL_6N1
- SERIAL_7N1
- SERIAL_8N1 (the default)
- SERIAL_5N2
- SERIAL_6N2
- SERIAL_7N2
- SERIAL_8N2
- SERIAL_5E1: even parity
- SERIAL_6E1
- SERIAL_7E1
- SERIAL_8E1
- SERIAL_5E2
- SERIAL_6E2
- SERIAL_7E2
- SERIAL_8E2
- SERIAL_5O1: odd parity
- SERIAL_6O1
- SERIAL_7O1
- SERIAL_8O1
- SERIAL_5O2
- SERIAL_6O2
- SERIAL_7O2
- SERIAL_8O2

## 3. print/println

语法：

```cpp
Serial.print(val);
Serial.print(val, format);
```

val参数：需要输出的值，该值可以是int，long，flaot，double，char，String等等。

format参数：需要输出的格式，可以是以下四个参数：

- **BIN** 输出二进制
- **OCT** 输出八进制
- **DEC** 输出十进制
- **HEX** 输出十六进制

如果输出的是浮点数，第二个可选参数可以用来限制输出的小数位。

下面是print的一些实例：

|           语句           | 输出结果 |
| :----------------------: | :------: |
|   Serial.print(78,BIN)   | 1001110  |
|  Serial.print(78, OCT)   |   116    |
|  Serial.print(78, DEC)   |    78    |
|  Serial.print(78, HEX)   |    4E    |
| Serial.print(1.23456, 2) |   1.23   |

pintln和print用法基本相同，只是println会在结束输出后自动换行。

下面是一个使用串口输出电位器模拟值的程序：

```cpp
int potentiometer = A0;

void setup() {
  Serial.begin(9600);
  pinMode(potentiometer, INPUT);
}

void loop() {
  int value = analogRead(potentiometer);
  Serial.println(value);
  delay(100);
}
```

## 4. available

语法：

```cpp
Serial.available();
```

该函数返回值为1表示当前串口缓存区有数据可以读取，返回值为0表示缓存区没有数据。

## 5. read

语法：

```cpp
Serial.read();
```

读取串口缓存区的一个字节。

下面是读取串口输入的内容，再以不同格式输出的一个实例：

```cpp
void setup() {
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
    uint8_t value = Serial.read();
    Serial.println(value, BIN);
    Serial.println(value, OCT);
    Serial.println(value, DEC);
    Serial.println(value, HEX);
  }
}
```

有关Arduino串口通信的其他函数可以参考以下内容：[Arduino Serial Function Lists](https://www.arduino.cc/reference/en/language/functions/communication/serial/)

这里只对Arduino的串口通信进行简单介绍，有关UART的通信机制及更多内容，请参考后面的章节([通讯专题/UART](../MCU-Communication/Serial/UART/Intro.md))
