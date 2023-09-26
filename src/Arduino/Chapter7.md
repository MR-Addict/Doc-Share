# 第七章——模数转换ADC

AVR芯片内部自带有10位的模数转换器，能够读取输入的模拟电压值，将其转换为数字值。

你可以通过`analogRead()`函数读取输入电压的数字值。

语法：

```cpp
analogRead(pin);
```

pin参数：在Arduno Uno开发板上，你可以使用**A0-A5**当作模拟输入的引脚，而在Arudino Nano开发板上你可以使用**A0-A7**这8个引脚。

在Arduino中，默认的分辨率为10位，也就是可以将0-5V分割1024份。而某些单片机芯片支持12位的分辨率，你可以使用`analogReadResolution()`调整这个分辨率。更多相关详细信息可以参考以下内容：[analogReadResolution](https://www.arduino.cc/reference/en/language/functions/zero-due-mkr-family/analogreadresolution/)。

下面是一个使用ADC调整板载LED闪烁频率的程序：

```cpp
int led = 13;
int potentiometer = A0;
int delayTime = 100;

void setup() {
  pinMode(led, OUTPUT);
  pinMode(potentiometer, INPUT);
}

void loop() {
  int value = analogRead(potentiometer);
  // 将读取的值映射在10-1000之间，也就是10ms-1000ms
  delayTime = map(value, 0, 1023, 10, 1000);
  digitalWrite(led, HIGH);
  delay(delayTime);
  digitalWrite(led, LOW);
  delay(delayTime);
}
```
