# 第八章——函数

## 1. 什么是函数

函数是一组一起执行一个任务的语句。每个 C 程序都至少有一个函数，即主函数 main() ，所有简单的程序都可以定义其他额外的函数。

定义一个函数：

```c
return_type function_name( parameter list )
{
   body of the function
}
```

- **返回类型：一个函数可以返回一个值。return_type 是函数返回的值的数据类型。有些函数执行所需的操作而不返回值，在这种情况下，return_type 是关键字 void。**
- **函数名称：这是函数的实际名称。函数名和变量名具有相同的命名规范，由字母、下划线和数字组成，只能由字母和下划线开头。**
- **参数：参数就像是占位符。当函数被调用时，向参数传递一个值，这个值被称为实际参数。参数列表包括函数参数的类型、顺序、数量。参数是可选的，也就是说，函数可能不包含参数。**
- **函数主体：函数主体包含一组定义函数执行任务的语句。**

下面我们将求上面求质数的例子进行函数的封装：

```c
#include <stdio.h>

int isPrime(int num) {
    int i = 2;
    for (; i <= num; i++) {
        //遇到第一个因数则跳出循环
        if (num % i == 0)
            break;
    }
    //如果该因数等于这个数本身则表明为质数，返回真
    if (i == num)
        return 1;
    else
        return 0;
}

int main() {
    for (int i = 2, count = 0; i <= 100; i++) {
        if (isPrime(i)) {
            printf("%-3d", i);
            count++;
            //判断质数的个数，五个质数就换行
            if (count % 5 == 0)
                printf("\n");
        }
    }
    return 0;
}
```

请大家尝试完成求两个数中最大公约数的函数封装。

参考代码如下：

```c
#include <stdio.h>

int getGCD(int num1, int num2) {
    int min = num1;
    if (num1 > num2)
        min = num2;
    for (int i = min; i > 0; i--) {
        if (num1 % i == 0 && num2 % i == 0)
            return i;
    }
}

int main() {
    int num1, num2;
    printf("Input two intergers:");
    scanf("%d %d", &num1, &num2);
    printf("The greatest common divisor between %d and %d is %d.\n",
            num1, num2, getGCD(num1, num2));
    return 0;
}
```

## 2. 函数声明

函数声明会告诉编译器函数名称及如何调用函数。一般我们都是把创建的函数放在main()之前，通过函数声明，我们就可以把函数主体放在main()之后。

函数声明的格式：

```c
return_type function_name( parameter list );
```

在函数声明中，参数的名称并不重要，只有参数的类型是必需的，因此下面也是有效的声明：

```c
int getGCD(int, int);
```

针对上面求最大公约数的例子，通过函数声明可以改成如下：

```c
#include <stdio.h>

int getGCD(int num1, int num2);
// int getGCD(int, int);

int main() {
    int num1, num2;
    printf("Input two intergers:");
    scanf("%d %d", &num1, &num2);
    printf("The greatest common divisor between %d and %d is %d.\n",
            num1, num2, getGCD(num1, num2));
    return 0;
}

int getGCD(int num1, int num2) {
    int min = num1;
    if (num1 > num2)
        min = num2;
    for (int i = min; i > 0; i--) {
        if (num1 % i == 0 && num2 % i == 0)
            return i;
    }
}
```

## 3. 小测试

- **尝试编写通过函数的方式求圆面积的程序**
- **输入一个整数，求其\\(x^2\\)的程序**