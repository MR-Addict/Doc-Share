<h1>
  嵌入式学习👻
  <a href="https://drone.jinhun.moe/MR-Addict/Doc-Share" target="_blank">
    <img src="https://drone.jinhun.moe/api/badges/MR-Addict/Doc-Share/status.svg" />
  </a>
</h1>

本网页内容主要由markdown写成，由[mdbook](https://rust-lang.github.io/mdBook/)生成网页模板，网页部署及CI由**卢老前辈**完成。

本内容主要是用来给，南京工业大学校科协技术开发部2021电子组同学培训学习使用。

本人能力有限，内容肯定存在错误和不足，欢迎大家指正。

你可以通过以下网址访问网页内容[book.jinhun.moe](https://book.jinhun.moe/)

下面是已有章节：

[介绍](src/./Intro.md)

- [Arduino基础](src/Arduino/Intro.md)
  - [第一章——Arduino和Arduino IDE](src/Arduino/Chapter1.md)
  - [第二章——第一个程序Blink](src/Arduino/Chapter2.md)
  - [第三章——使用按钮](src/Arduino/Chapter3.md)
  - [第四章——中断Interrupt](src/Arduino/Chapter4.md)
  - [第五章——定时器Timer](src/Arduino/Chapter5.md)
  - [第六章——脉冲宽度调制PWM](src/Arduino/Chapter6.md)
  - [第七章——模数转换ADC](src/Arduino/Chapter7.md)
  - [第八章——串口通信UART](src/Arduino/Chapter8.md)
  - [第九章——单片机的存储器和EEPROM](src/Arduino/Chapter9.md)

- [C语言基础](src/C-Language/Intro.md)
  - [第一章——C语言基本语法](src/C-Language/Chapter1.md)
  - [第二章——数据类型](src/C-Language/Chapter2.md)
  - [第三章——变量和常量](src/C-Language/Chapter3.md)
  - [第四章——运算符](src/C-Language/Chapter4.md)
  - [第五章——条件判断if和switch](src/C-Language/Chapter5.md)
  - [第六章——循环while和do/while](src/C-Language/Chapter6.md)
  - [第七章——循环for](src/C-Language/Chapter7.md)
  - [第八章——函数](src/C-Language/Chapter8.md)
  - [第九章——函数的作用域规则](src/C-Language/Chapter9.md)
  - [第十章——数组](src/C-Language/Chapter10.md)
  - [第十一章——多维数组](src/C-Language/Chapter11.md)
  - [第十二章——字符串](src/C-Language/Chapter12.md)
  - [第十三章——指针](src/C-Language/Chapter13.md)
  - [第十四章——指针的算数运算](src/C-Language/Chapter14.md)
  - [第十五章——指针和数组、函数](src/C-Language/Chapter15.md)
  - [第十六章——枚举(src/enum)](src/C-Language/Chapter16.md)
  - [第十七章——结构体(src/struct)](src/C-Language/Chapter17.md)
  - [第十八章——共用体(src/union)](src/C-Language/Chapter18.md)

- [通信专题](src/MCU-Communication/Intro.md)
  - [One-Wire](src/MCU-Communication/Serial/One-Wire/Intro.md)
    - [第一章——One-Wire通信原理](src/MCU-Communication/Serial/One-Wire/Chapter1.md)
    - [第二章——DHT11数据手册速览](src/MCU-Communication/Serial/One-Wire/Chapter2.md)
    - [第三章——代码逻辑分析](src/MCU-Communication/Serial/One-Wire/Chapter3.md)
    - [第四章——整合打包代码](src/MCU-Communication/Serial/One-Wire/Chapter4.md)
    - [第五章——总结和拓展](src/MCU-Communication/Serial/One-Wire/Chapter5.md)
  - [UART](src/MCU-Communication/Serial/UART/Intro.md)
    - [第一章——UART通信原理](src/MCU-Communication/Serial/UART/Chapter1.md)
    - [第二章——HC-05数据手册速览](src/MCU-Communication/Serial/UART/Chapter2.md)
    - [第三章——HC-05蓝牙的使用](src/MCU-Communication/Serial/UART/Chapter3.md)
    - [第四章——总结和拓展](src/MCU-Communication/Serial/UART/Chapter4.md)
  - [I2C](src/MCU-Communication/Serial/I2C/Intro.md)
    - [第一章——I2C的通信原理](src/MCU-Communication/Serial/I2C/Chapter1.md)
    - [第二章——DS3231数据手册速览](src/MCU-Communication/Serial/I2C/Chapter2.md)
    - [第三章——代码逻辑分析](src/MCU-Communication/Serial/I2C/Chapter3.md)
    - [第四章——整合打包代码](src/MCU-Communication/Serial/I2C/Chapter4.md)
    - [第五章——总结和拓展](src/MCU-Communication/Serial/I2C/Chapter5.md)
  - [SPI](src/MCU-Communication/Serial/SPI/Intro.md)
    - [第一章——SPI通信原理](src/MCU-Communication/Serial/SPI/Chapter1.md)
    - [第二章——MPU9250数据手册速览](src/MCU-Communication/Serial/SPI/Chapter2.md)
    - [第三章——代码逻辑分析](src/MCU-Communication/Serial/SPI/Chapter3.md)
    - [第四章——整合打包代码](src/MCU-Communication/Serial/SPI/Chapter4.md)
    - [第五章——总结和拓展](src/MCU-Communication/Serial/SPI/Chapter5.md)
  - [并行通信](src/MCU-Communication/Parallel/Intro.md)
    - [第一章——并行通信原理](src/MCU-Communication/Parallel/Chapter1.md)
    - [第二章——LCD1602数据手册速览](src/MCU-Communication/Parallel/Chapter2.md)
    - [第三章——代码逻辑分析](src/MCU-Communication/Parallel/Chapter3.md)
    - [第四章——整合打包代码](src/MCU-Communication/Parallel/Chapter4.md)
    - [第五章——总结和拓展](src/MCU-Communication/Parallel/Chapter5.md)

- [项目制作](src/Projects/Intro.md)
  - [NFC](src/Projects/NFC/Intro.md)
    - [第一章——初代门禁版本](src/Projects/NFC/Chapter1.md)
    - [第二章——目前门禁版本](src/Projects/NFC/Chapter2.md)
    - [第三章——未来的改进](src/Projects/NFC/Chapter3.md)
  - [LED Board](src/Projects/LED-Board/Intro.md)
    - [第一章——制作步骤](src/Projects/LED-Board/Chapter1.md)
    - [第二章——代码及使用](src/Projects/LED-Board/Chapter2.md)
    - [第三章——总结和拓展](src/Projects/LED-Board/Chapter3.md)
  - [CNC-Engraver](src/Projects/CNC-Engraver/Intro.md)
    - [第一章——什么是CNC](src/Projects/CNC-Engraver/Chapter1.md)
    - [第二章——雕刻机硬件搭建](src/Projects/CNC-Engraver/Chapter2.md)
    - [第三章——雕刻机控制软件](src/Projects/CNC-Engraver/Chapter3.md)
    - [第四章——总结和拓展](src/Projects/CNC-Engraver/Chapter4.md)

- [Markdown教程](src/Markdown/Intro.md)
  - [第一章——Markdown语法](src/Markdown/Chapter1.md)

- [Git及Github教程](src/Git-Github/Intro.md)
  - [第一章——集中式vs分布式](src/Git-Github/Chapter1.md)
  - [第二章——Git的安装与配置](src/Git-Github/Chapter2.md)
  - [第三章——Git常用命令](src/Git-Github/Chapter3.md)
