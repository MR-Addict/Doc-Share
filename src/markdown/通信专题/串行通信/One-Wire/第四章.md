# 第四章——整合打包代码

通过前面的分析，我们可以整合出如下DHT11完整的One—Wire通信代码：

```cpp
#define TIMEOUT 1e5
#define DHT11_OKAY 0x00
#define DHT11_ERROR 0x01

uint8_t humidity;
float temperature;
uint8_t sensorPin = 2;

void getLowTime();
void getHighTime();
void updateData();

void setup() {
  Serial.begin(115200);
}

void loop() {
  switch (updataData()) {
    case DHT11_ERROR:
      Serial.println("DHT11 ERROR!");
      break;
    case DHT11_OKAY:
      Serial.print("DHT11 Okay,humidity is ");
      Serial.print(humidity);
      Serial.print(", temperature is ");
      Serial.println(temperature);
      break;
  }
  delay(3000);
}

uint32_t getLowTime() {
  uint32_t lastTime = micros();
  while (!digitalRead(sensorPin)) {
    if (micros() - lastTime > TIMEOUT) {
      break;
    }
  }
  return (micros() - lastTime);
}

uint32_t getHighTime() {
  uint32_t lastTime = micros();
  while (digitalRead(sensorPin)) {
    if (micros() - lastTime > TIMEOUT) {
      break;
    }
  }
  return (micros() - lastTime);
}

bool updataData() {
  /*MCU发送开始信号, 并等待应答*/
  pinMode(sensorPin, OUTPUT);
  //拉低18ms
  digitalWrite(sensorPin, LOW);
  delay(18);
  //拉高40us
  digitalWrite(sensorPin, HIGH);
  delayMicroseconds(40);

  /*接受DHT11做出的应答*/
  pinMode(sensorPin, INPUT_PULLUP);
  getLowTime();
  getHighTime();

  /*开始接受40bit数据*/
  uint8_t buffer[5] = {0};
  for (uint8_t i = 0; i < 5; i++) {
    for (uint8_t j = 0; j < 8; j++) {
      getLowTime();
      if (getHighTime() > 50)
        buffer[i] |= (0x80 >> j);
    }
  }

  /*结束通信*/
  getLowTime();

  /*检查校验和*/
  if (buffer[0] + buffer[1] + buffer[2] + buffer[3] != buffer[4])
    return DHT11_ERROR;

  /*更新数据*/
  humidity = buffer[0];
  temperature = buffer[2] + buffer[3] * 0.1;
  return DHT11_OKAY;
}
```