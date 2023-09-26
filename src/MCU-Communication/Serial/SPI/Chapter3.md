# 第三章——代码逻辑分析

## 1. 使用到的寄存器

根据前面的介绍，我们需要用到以下几个寄存器：

```cpp
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
```

同时由于MPU9250需要在地址中加入读写位，因此，还定义以下两个宏

```cpp
#define MPU_SPI_WRITE 0x00
#define MPU_SPI_READ 0x80
```

## 2. MPU9250的SPI读写

根据前面的介绍，我们需要定义以下几个用于读写操作的函数：

```cpp
void write_cmd(uint8_t cmd);
void write_cmd(uint8_t* cmd, uint8_t length);
void write_data(uint8_t data);
void write_data(uint8_t* data, uint8_t length);
uint8_t read_data(uint8_t data);
void read_data(uint8_t* data, uint8_t length);
```

由于MPU9250没有命令和数据的区分，因此我们统一认为是数据，同时在MPU9250中不需要连续写的操作，因此我们只需要定义以下三个读写函数：

```cpp
void write_data(uint8_t data);
uint8_t read_data();
void read_data(uint8_t* data, uint8_t length);
```

在这里，我们需要把对应的寄存器地址加上去，最终的函数声明如下：

```cpp
void write_data(uint8_t addr, uint8_t data);
uint8_t read_data(uint8_t addr);
void read_data(uint8_t addr, uint8_t* data, uint8_t length);
```

根据Arduino的SPI的使用方法，我们可以将上面三个函数补全：

```cpp
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
```

## 3. MPU9250初始化

在读取MPU9250之前，我们需要对MPU9250进行简单的配置，比如唤醒MPU，不使能某些功能，设置陀螺仪和加速度计的范围等等。

```cpp
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
```

可以发现其中很多的寄存器都是不需要配置，写入的数据都是0x00，属于默认配置，但是这里列出来，方便大家以后的使用和更改。

前面我们介绍寄存器的时候有一个ID寄存器，这个寄存器可以帮助我们辨别MPU9250的初始化是否成功。

```cpp
// Check ID
if (read_data(MPU_ID_ADDR) == 0x71)
    return true;
else
    return false;
```

## 4. 读取MPU9250数据

完成了底层的函数，我们就可以从MPU9250读取数据了。

同样，我们先来读取温度。因为温度是一个有符号的16位数据，因此我们需要读两次，将两个`uint8_t`转换成一个`int16_t`，同时，温度的计算公式是：`TEMP_degC = (TEMP_OUT-0)/321.0 +21`。

```cpp

float readTemp() {
    int16_t temp;
    uint8_t buffer[2];
    read_data(MPU_TEMP_ADDR, buffer, 2);
    temp = buffer[0] << 8 | buffer[1];  // 第一个字节是高位，第二字节是低位
    return (temp / 321.0 + 21); // 温度计算公式：TEMP_degC = TEMP_OUT/321.0 +21
}
```

这样我们就完成了读取温度的操作。读取陀螺仪和加速度的操作基本相同，只是他们都是6个字节，每个都要读取六次，这里我们只读取原始数据，不对数据进行加工。

```cpp
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
```

这样，我们就完成了MPU9250的所有数据读写操作，完整代码在下一章。
