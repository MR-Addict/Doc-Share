# 第四章——整合打包代码

下面是完整的MPU9250 SPI通信代码：

```cpp
#include <SPI.h>

#define MPU_FSYNC_ADDR 0x1A
#define MPU_GFS_ADDR 0x1B
#define MPU_AFS_ADDR 0x1C
#define MPU_EN_INT 0x38
#define MPU_ACCEL_ADDR 0x3B
#define MPU_GYRO_ADDR 0x43
#define MPU_TEMP_ADDR 0x41
#define MPU_FIFO_EN 0x6A
#define MPU_RESET 0x6B
#define MPU_ID_ADDR 0x75

#define MPU_SPI_WRITE 0x00
#define MPU_SPI_READ 0x80

#define CS 10

void write_data(uint8_t addr, uint8_t data);
uint8_t read_data(uint8_t addr);
void read_data(uint8_t addr, uint8_t* data, uint8_t length);
bool MPU_init();
float readTemp();
void readRawAccel(int16_t* accel);
void readRawGyro(int16_t* gyro);

void setup() {
    Serial.begin(115200);
    if (MPU_init()) {
        Serial.println("MPU init success!");
    } else {
        Serial.println("MPU init failed!");
    }
    Serial.println();
}

void loop() {
    int16_t accel[3], gyro[3];
    readRawAccel(accel);
    readRawGyro(gyro);

    Serial.print("Accel X=");
    Serial.print(accel[0]);
    Serial.print(",Y=");
    Serial.print(accel[1]);
    Serial.print(",Z=");
    Serial.println(accel[2]);

    Serial.print("Gyro X=");
    Serial.print(gyro[0]);
    Serial.print(",Y=");
    Serial.print(gyro[1]);
    Serial.print(",Z=");
    Serial.println(gyro[2]);

    Serial.print("Temp=");
    Serial.println(readTemp(), 2);
    Serial.println();
    delay(1000);
}

void write_data(uint8_t addr, uint8_t data) {
    // 设置MPU9250最大的时钟频率1MHz，高位在前，模式0
    SPI.beginTransaction(SPISettings(1000 * 1000, MSBFIRST, SPI_MODE0));
    digitalWrite(CS, LOW);
    SPI.transfer(addr | MPU_SPI_WRITE);
    SPI.transfer(data);
    digitalWrite(CS, HIGH);
    SPI.endTransaction();
}

uint8_t read_data(uint8_t addr) {
    uint8_t data;
    // 设置MPU9250最大的时钟频率1MHz，高位在前，模式0
    SPI.beginTransaction(SPISettings(1000 * 1000, MSBFIRST, SPI_MODE0));
    digitalWrite(CS, LOW);
    SPI.transfer(addr | MPU_SPI_READ);
    data = SPI.transfer(0xFF);
    digitalWrite(CS, HIGH);
    SPI.endTransaction();
    return data;
}

void read_data(uint8_t addr, uint8_t* data, uint8_t length) {
    // 设置MPU9250最大的时钟频率1MHz，高位在前，模式0
    SPI.beginTransaction(SPISettings(1000 * 1000, MSBFIRST, SPI_MODE0));
    digitalWrite(CS, LOW);
    SPI.transfer(addr | MPU_SPI_READ);
    for (uint8_t i = 0; i < length; i++) {
        data[i] = SPI.transfer(0xFF);
    }
    digitalWrite(CS, HIGH);
    SPI.endTransaction();
}

bool MPU_init() {
    pinMode(CS, OUTPUT);
    // 初始化SPI
    SPI.begin();
    // Wake up MPU
    write_data(MPU_RESET, 0x00);
    // Disable FIFO，Disable I2C
    write_data(MPU_FIFO_EN, 0x10);
    // Disable FSYNC
    write_data(MPU_FSYNC_ADDR, 0x00);
    // Disable interupt
    write_data(MPU_EN_INT, 0x00);
    // Set Gyroscope full scable range to ±250°/s
    write_data(MPU_GFS_ADDR, 0x00);
    // Set Accelerometer full scable range to ±2g
    write_data(MPU_AFS_ADDR, 0x00);
    // Check ID, dafaule value is 0x71
    if (read_data(MPU_ID_ADDR) == 0x71)
        return true;
    else
        return false;
}

void readRawAccel(int16_t* accel) {
    uint8_t buffer[6];
    read_data(MPU_ACCEL_ADDR, buffer, 6);
    for (uint8_t i = 0; i < 3; i++) {
        accel[i] = buffer[i * 2] << 8 | buffer[i * 2 + 1];  // 第一个字节是高位，第二字节是低位
    }
}

void readRawGyro(int16_t* gyro) {
    uint8_t buffer[6];
    read_data(MPU_GYRO_ADDR, buffer, 6);
    for (uint8_t i = 0; i < 3; i++) {
        gyro[i] = buffer[i * 2] << 8 | buffer[i * 2 + 1];   // 第一个字节是高位，第二字节是低位
    }
}

float readTemp() {
    int16_t temp;
    uint8_t buffer[2];
    read_data(MPU_TEMP_ADDR, buffer, 2);
    temp = buffer[0] << 8 | buffer[1];  // 第一个字节是高位，第二字节是低位
    return (temp / 321.0 + 21); // 温度计算公式：TEMP_degC = TEMP_OUT/321.0 +21
}
```