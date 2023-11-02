# 第十三章——指针

## 1. 指针

学习 C 语言的指针既简单又有趣。通过指针，可以简化一些 C 编程任务的执行，还有一些任务，如动态内存分配，没有指针是无法执行的。

每一个变量都有一个内存位置，每一个内存位置都定义了可使用 & 运算符访问的地址，它表示了在内存中的一个地址。

下面是一个输出定义的变量的地址的程序：

```c
#include <stdio.h>

int main() {
    int virable = 0;
    int* pointer = &virable;  // 定义指针变量
    printf("The address of virable is %p.\n", pointer);
    return 0;
}
```

运行的结果如下：

```plaintext
The address of virable is 000000000061FE14.
```

## 2. 什么是指针

指针也就是内存地址，指针变量是用来存放内存地址的变量。就像其他变量或常量一样，在使用指针存储其他变量地址之前，对其进行声明。指针变量声明的一般形式为：

```c
type *var-name;
```

在这里，type 是指针的基类型，它必须是一个有效的 C 数据类型，var-name 是指针变量的名称。用来声明指针的`*`与乘法中使用的`*`是相同的。但是，在这个语句中，`*`是用来指定一个变量是指针。

以下是有效的指针声明：

```c
int* ip;    /* 一个整型的指针 */
double* dp; /* 一个 double 型的指针 */
float* fp;  /* 一个浮点型的指针 */
char* cp;   /* 一个字符型的指针 */
```

所有实际数据类型，不管是整型、浮点型、字符型，还是其他的数据类型，对应指针的值的类型都是一样的，都是一个代表内存地址的长的十六进制数。

不同数据类型的指针之间唯一的不同是，指针所指向的变量或常量的数据类型不同。

## 3. 如何使用指针

使用指针时会频繁进行以下几个操作：

定义一个指针变量、把变量地址赋值给指针、访问指针变量中可用地址的值。这些是通过使用一元运算符 \* 来返回位于操作数所指定地址的变量的值。

下面是一个实例：

```c
#include <stdio.h>

int main() {
    int var = 20; /* 实际变量的声明 */
    int* ip;      /* 指针变量的声明 */

    ip = &var; /* 在指针变量中存储 var 的地址 */

    /* 使用指针访问值 */
    printf("The value of var is %d.\n", var);

    /* 使用指针访问值 */
    printf("The value of *ip is %d.\n", *ip);

    printf("The address of var is %p.\n", &var);

    /* 在指针变量中存储的地址 */
    printf("The address of ip is %p.\n", ip);

    return 0;
}
```

输出的结果如下：

```plaintext
The value of var is 20.
The value of *ip is 20.
The address of var is 000000000061FE14.
The address of ip is 000000000061FE14.
```

下面是使用指针来交换两个数的程序，这也是指针很常用的一个例子：

```c
#include <stdio.h>

void swap(int* num1, int* num2) {
    int temp;
    temp = *num1;
    *num1 = *num2;
    *num2 = temp;
}

int main() {
    int a = 4, b = 6;
    printf("a=%d, b=%d.\n", a, b);
    swap(&a, &b);
    printf("a=%d, b=%d.\n", a, b);
    return 0;
}
```

输出的结果如下：

```plaintext
a=4, b=6.
a=6, b=4.
```

在这个例子中，如果我们不使用指针，是达不到交换两个数的目的的。当然，使用指针还有更多方便的好处，在后面的章节中会陆陆续续介绍。

## 4. C 中的 NULL 指针

在变量声明的时候，如果没有确切的地址可以赋值，为指针变量赋一个 NULL 值是一个良好的编程习惯。赋为 NULL 值的指针被称为空指针。

NULL 指针是一个定义在标准库中的值为零的常量。

请看下面的程序：

```c
#include <stdio.h>

int main() {
    int* ptr = NULL;
    printf("The address of ptr is %p\n", ptr);
    return 0;
}
```

输出的结果如下：

```plaintext
The address of ptr is 0000000000000000
```
