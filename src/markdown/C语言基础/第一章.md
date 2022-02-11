# 第一章——C语言基本语法

## 1. 语句

C语言的基本单位是语句，每条语句必须以`;`结束。它表明一个逻辑实体的结束。

多条语句在某些情况下，可以用`,`隔开合并成一条语句。

```c
#include <stdio.h>

int main() {
    int input, ouput;
    printf("Input your age:");
    scanf("%d", &input);
    ouput = input;
    printf("Your age is:%d", ouput);
    return 0;
}
```

## 2. 注释

注释是用来给代码添加解释，让自己或者其他人方便阅读或者方便自己今后修改代码，注释会被编译器忽略，对代码的运行没有影响。

C语言注释有两种：

```c
//单行注释
//单行注释

/*
多行注释
多行注释
多行注释
*/
```

## 3. 关键字

关键字是C语言预定义的，对编译器有特殊意义的保留字，这些关键字是不能被用来当作变量名或者函数名等。

| 关键字 |              作用              |
| :----: | :----------------------------: |
|  int   |       声明整形变量或函数       |
| float  | 声明浮点型变量或函数返回值类型 |
|  long  | 声明长整型变量或函数返回值类型 |
|  void  |    声明函数无返回值或无参数    |
|   if   |          条件判断语句          |
|  else  |        条件分支否定语句        |
|  for   |          一种循环语句          |
| while  |          一种循环语句          |
| return |         子程序返回语句         |
| define |  定义一个标识符来表示一个常量  |

## 4. 函数

函数需要返回值，需要函数名，需要参数，C语言的main函数就是一个标准的函数。

```c
#include <stdio.h>

int main(void) {
    printf("Hello world!");
    return 0;
}
```

多条语句可以用函数进行封装，封装可以简化代码，方便调用。

```c
#include <stdio.h>

void printHelloWorld() {
    printf("Hello world!");
}

int main() {
    printHelloWorld();
    return 0;
}
```

## 5. 预处理(#)

预处理的特点：
- **为了区分一般的语句，预处理命令行都必须以#开始，结尾不加分号**
- **预处理命令可以放在程序中的任意位置**
- **在程序中凡是以#开始的语句都是预处理命令行**


预处理的作用：
- **宏定义：#define**
- **文件包含:#include <stdio.h>**
- **条件编译:#ifdef #define #endif**