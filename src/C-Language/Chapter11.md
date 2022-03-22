# 第十一章——多维数组

## 1. 多维数组

C 语言支持多维数组。多维数组声明的一般形式如下：

```c
type name[size1][size2]...[sizeN];
```

例如，下面的声明创建了一个三维 5 . 10 . 4 整型数组：

```c
int threedim[5][10][4];
```

## 2. 二维数组

多维数组最简单的形式是二维数组。一个二维数组，在本质上，是一个一维数组的列表。声明一个 x 行 y 列的二维整型数组，形式如下：

```c
type arrayName [ x ][ y ];
```

其中，type 可以是任意有效的 C 数据类型，arrayName 是一个有效的 C 标识符。一个二维数组可以被认为是一个带有 x 行和 y 列的表格。下面是一个二维数组，包含 3 行和 4 列：

```c
int x[3][4];
```

![](../../images/C语言基础/2.11-1.png)

## 3. 初始化二维数组

多维数组可以通过在括号内为每行指定值来进行初始化。下面是一个带有 3 行 4 列的数组：

```c
int a[3][4] = {
    {0, 1, 2, 3},  /*  初始化索引号为 0 的行 */
    {4, 5, 6, 7},  /*  初始化索引号为 1 的行 */
    {8, 9, 10, 11} /*  初始化索引号为 2 的行 */
};
```

内部嵌套的括号是可选的，下面的初始化与上面是等同的：

```c
int a[3][4] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
```

## 4. 访问二维数组

二维数组中的元素是通过使用下标（即数组的行索引和列索引）来访问的。例如：

```c
int val = a[2][3];
```

上面的语句将获取数组中第 3 行第 4 个元素。您可以通过上面的示意图来进行验证。

让我们来看看下面的程序，我们将使用嵌套循环来处理二维数组：

```c
#include <stdio.h>

int main() {
    /* 一个带有 5 行 2 列的数组 */
    int a[5][2] = {{0, 0}, {1, 2}, {2, 4}, {3, 6}, {4, 8}};

    /* 输出数组中每个元素的值 */
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 2; j++) {
            printf("a[%d][%d] = %d ", i, j, a[i][j]);
        }
        putchar('\n');
    }
    return 0;
}
```

输出的结果如下：

```plaintext
a[0][0] = 0 a[0][1] = 0
a[1][0] = 1 a[1][1] = 2
a[2][0] = 2 a[2][1] = 4
a[3][0] = 3 a[3][1] = 6
a[4][0] = 4 a[4][1] = 8
```

在C语言中我们可以创建任意长的数组，但是在一般情况下，我们创建的数组都是一维数组和二维数组。