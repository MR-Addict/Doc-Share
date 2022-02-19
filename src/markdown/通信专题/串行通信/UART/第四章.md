# 第四章——总结和拓展

## 1. 总结

整体来说，不论是蓝牙的使用还是UART的使用，在单片机中都非常地简单，没有什么复杂的寄存器操作和配置等。在Arduino框架下，你只要会用`Serial`，一般就可以用好蓝牙，其他框架也类似，使用起来不会很难。

其实Serial还有其他几个重要的函数，如果用得好，可以实现很多实用的功能。

下面是一个前面我讲到的WS2812灯板，有关蓝牙部分的代码，大家可以参考一下：

```cpp
void getSerial() {
  if (Serial.available()) {
    uint8_t message = Serial.read();// 获取第一个命令
    uint8_t parameter = Serial.parseInt();// 获取第一个命令的参数

    /* 设置模式的命令 */
    if (message == 'M' || message == 'm') {
      switch (parameter) {
        case 0: Mode = 0; break;
        case 1: Mode = 1; break;
        case 2: Mode = 2; break;
        case 3: Mode = 3; break;
      }
    }

    /* 打开/关闭灯板的命令 */
    else if (message == 'S' || message == 's') {
      switch (parameter) {
        case 0: Dispaly_Status = false; break;
        default: Dispaly_Status = true; break;
      }
    }

    /* 设置灯板亮度的命令 */
    else if (message == 'B' || message == 'b') {
      BRIGHTNESS = parameter;
      if (Mode == 0 || Mode == 2) {
        FastLED.setBrightness(BRIGHTNESS);
      }
    }

    /* 设置显示时间颜色的命令 */
    else if (message == 'R' || message == 'r') {
      R = parameter;
      G = Serial.parseInt();
      B = Serial.parseInt();
    }

    /* 设置时间的命令 */
    else if (message == 'H' || message == 'h') {
      if (Mode == 2) {
        Hour = parameter;
        Minute = Serial.parseInt();
        SetTime();
      }
    }
  }
}
```

## 2. 拓展

其实，在学完有关UART的通信原理之后，我们是完全可以自己写一个UART通信的底层驱动的，我们一般称之为`软串口`，因为相对于硬件支持的串口通信，通过软件编写的串口通信一般速度会低一些，同时在时序上也没有硬件支持的串口通信精准、稳定。不过我们常用的波特率使用起来是没有问题的。

在Arduino框架中，有一个支持的官方库`SoftwareSerial.h`，它的使用和`Serial`几乎一致，而且它支持使用任何引脚作为TX和RX引脚。支持常用的波特率，最高可以设置115200。你可以创建多个软串口，但同时只能使用一个。

下面是一个使用了软串口的实例：

```cpp
#include <SoftwareSerial.h>

SoftwareSerial serial(10, 11); // RX:10,TX:11
void setup(){
  serial.begin(38400);
}

void loop(){
  serial.println("Hello world!");
  delay(1000);
}
```

其实呢，通过软串口，我们可以把HC-05接到其他引脚上，这样我们就可以不占用硬件串口，不需要每次更新代码都把HC-05拔下来。

同时呢，我们还可以**通过软串口实现AT配置**，也就是通过读取硬件串口的数据，然后借助软件串口将命令发送给HC-05。这样我们就**不需要USB转串口**，直接使用Arduino Uno实现AT命令配置。这样就使得整个过程变得简单很多。

下面是一个我使用的借助软串口发送AT命令给HC-05的代码：

```cpp
#include <SoftwareSerial.h>

SoftwareSerial serial(2, 3); // RX:2,TX:3

void setup() {
  Serial.begin(38400);
  serial.begin(38400);
  while (!Serial);
}

void loop() {
  /* 读取硬件串口的AT命令 */
  if (Serial.available()) {
    String message = "";
    while (Serial.available()) {
      message += (char)Serial.read();
    }
    // 发送命令给软串口，也就是发送给HC-05
    serial.print(message);
  }

  /* 读取软串口，也就是HC-05的应答数据 */
  if (serial.available()) {
    // 读取HC-05数据，同时发送到硬件串口
    String message = "";
    while (serial.available()) {
      message += (char)serial.read();
    }
    Serial.print(message);
  }
}
```