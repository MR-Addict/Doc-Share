# 第二章——数据类型

## 1. 什么是数据类型

C语言的数据类型指的是某个数据元素在编译器中所占的存储空间，我们要用不同的数据类型来表示不同的数据，数据类型就是定义数据的大小。

数据类型主要分为**整型**，**浮点型**，**其他**。

常用的数据类型有：
int，unsigned int，short，unsigned short，long，unsigned long，char，unsigned char，flaot，double，long double，void，其他。

## 2. 整数类型

|    数据类型    | 字节数 |           大小           |
| :------------: | :----: | :----------------------: |
|      char      |   1    |     -127-128或0-255      |
| unsigned char  |   1    |          0-255           |
|      int       |   2    |       -32768-32767       |
|  unsigned int  |   2    |         0-65535          |
|     short      |   2    |       -32768-32767       |
| unsigned short |   2    |         0-65535          |
|      long      |   4    | -2147483648 ~ 2147483647 |
| unsigned long  |   4    |       0-4294967295       |

## 3. 浮点类型

|  数据类型   | 字节数 |   精度   |
| :---------: | :----: | :------: |
|    float    |   4    | 6位有效  |
|   double    |   8    | 15位有效 |
| long double |   16   | 19位有效 |

## 4. 其他类型

- **void类型**
- **指针类型(*)**
- **数组类型([])**
- **结构类型(struct)**
- **共用体类(union)**
- **函数类型**

## 5. typedef

使用typedef重新定义一个数据类型的名称，如：

```c
typedef int BOOL;
#define TRUE 1
#define FALSE 0
BOOL isDisplay = TRUE;
```