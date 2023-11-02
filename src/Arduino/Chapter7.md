# 第七章——模数转换 ADC

AVR 芯片内部自带有 10 位的模数转换器，能够读取输入的模拟电压值，将其转换为数字值。

你可以通过`analogRead()`函数读取输入电压的数字值。

语法：

```cpp
analogRead(pin);
```

pin 参数：在 Arduno Uno 开发板上，你可以使用**A0-A5**当作模拟输入的引脚，而在 Arudino Nano 开发板上你可以使用**A0-A7**这 8 个引脚。

在 Arduino 中，默认的分辨率为 10 位，也就是可以将 0-5V 分割 1024 份。而某些单片机芯片支持 12 位的分辨率，你可以使用`analogReadResolution()`调整这个分辨率。更多相关详细信息可以参考以下内容：[analogReadResolution](https://www.arduino.cc/reference/en/language/functions/zero-due-mkr-family/analogreadresolution/)。

下面是一个使用 ADC 调整板载 LED 闪烁频率的程序：

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
