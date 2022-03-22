# 第五章——定时器Timer

## 定时器

定时器也是一种中断，属于软件中断。它就像一个时钟，可以测量事件的时间间隔。每个单片机都有一个时钟（振荡器），比如在 Arduino Uno中它是16Mhz的晶振。时钟频率越高，处理速度就越快。

计时器使用计数器，该计数器根据时钟频率以特定速度计数。在Arduino Uno中，单次计数需要 1/16000000 秒或 62 纳秒。这意味着 Arduino 每 62 纳秒从一条指令移动到另一条指令。

在Arduino Uno中有三个定时器，他们分别被使用到以下官方函数和库中：

- Timer0（8位定时器）
  - delay()
  - delayMicroseconds()
  - millis()
  - micros()
- Timer1（16位定时器）
  - 伺服电机库<Servo.h>
- Timer2（8位定时器）
  - tone()函数

有很多支持的官方库可以帮助大家使用计时器，[arduino-timer](https://github.com/contrem/arduino-timer)可以让你使用三个定时器，[MsTimer2](https://playground.arduino.cc/Main/MsTimer2/)是仅使用了Timer2的一个第三方库，使用起来更加简单明了，我个人比较推荐大家使用。

下面是一个使用了MsTimer2的Blink程序。

```cpp
#include <MsTimer2.h>

uint8_t led = 13;
boolean LEDStatus;

void ledTask() {
  LEDStatus = !LEDStatus;
  if (LEDStatus)digitalWrite(led, HIGH);
  else digitalWrite(led, LOW);
}

void setup() {
  pinMode(led, OUTPUT);
  MsTimer2::set(1000, ledTask);
  MsTimer2::start();
}

void loop() {
}
```

有关手动配置Arduino Uno定时器的内容这里不做详细介绍，有兴趣的可以参考以下文章：[Arduino Timer Tutorial](https://circuitdigest.com/microcontroller-projects/arduino-timer-tutorial)