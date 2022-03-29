# 第三章——代码逻辑分析

## 1.第一步，定义获取高低电平时间的函数

在分析数据手册的时候我们会发现，获取高低电平的时间非常重要，因此我们可以先定义这两个函数**getLowTime()**，和**getHighTime()**：

```cpp
uint32_t getLowTime() {
  uint32_t lastTime = micros();
  while (!digitalRead(sensorPin)) {
    if (micros() - lastTime > TIMEOUT) {
      break;
    }
  }
  return (micros() - lastTime);
}
```

```cpp
uint32_t getHighTime() {
  uint32_t lastTime = micros();
  while (digitalRead(sensorPin)) {
    if (micros() - lastTime > TIMEOUT) {
      break;
    }
  }
  return (micros() - lastTime);
}
```

**micros()** 的返回值是unsigned long也就是uint32_t，单位是us。

同时我们同时我们要保证程序不会因为硬件或者其他问题，使程序被长时间block，因此我们加入**TIMEOUT**的判断，同时在后面我们还需要定义另外两个宏定义，这在后面会用到，即**DHT11_OKAY**和**DHT11_ERROR**。

```cpp
#define TIMEOUT 1e5
#define DHT11_OKAY 0x00
#define DHT11_ERROR 0x01
```

## 2.第二步，MCU和DHT11握手通信

首先由MCU发出开始信号，发送18ms的低电平，40us的高电平。

```cpp
/*MCU发送开始信号, 并等待应答*/
pinMode(sensorPin, OUTPUT);
//拉低18ms
digitalWrite(sensorPin, LOW);
delay(18);
//拉高40us
digitalWrite(sensorPin, HIGH);
delayMicroseconds(40);
```

然后MCU等待DHT11的应答，应答信号是80us的低电平和80us的高电平，这边我们不需要精确的时间，只需要等待高低电平过去。


```cpp
/*接受DHT11做出的应答*/
pinMode(sensorPin, INPUT_PULLUP);
getLowTime();
getHighTime();
```

## 3. 第三步，接受来自DHT11的数据

接收40位的数据包，我们将其分5为个字节接收。

这里我们不需要知道低电平的时间，等待低电平过去就可以。但是需要知道高电平的时间，通过**50us的阈值**来判断这一位是‘0’还是‘1’，因为‘0’的高电平是26-28us，‘1’的高电平是70us，因此我们大概取个中间值50us。

因为5个字节都被初始化为‘0’，所以我们只需要移位和按位求和把‘1’加进去就好了。

```cpp
/*开始接受40bit数据*/
uint8_t buffer[5] = {0};
for (uint8_t i = 0; i < 5; i++) {
  for (uint8_t j = 0; j < 8; j++) {
    getLowTime();
    if (getHighTime() > 50)
      buffer[i] |= (0x80 >> j);
  }
}
```

结束通信。

```cpp
/*结束通信*/
getLowTime();
```

## 4. 第四步，检查校验和并更新数据

在更新数据前我们要保证数据的准确性，检查一下校验和。

```cpp
/*检查校验和*/
if (buffer[0] + buffer[1] + buffer[2] + buffer[3] != buffer[4])
  return DHT11_ERROR;

```

当数据准确无误后再更新数据，温度的小数位的精度是0.1。

```cpp
/*更新数据*/
humidity = buffer[0];
temperature = buffer[2] + buffer[3] * 0.1;
return DHT11_OKAY;
```
