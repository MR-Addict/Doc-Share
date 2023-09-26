# 第十四章——指针的算数运算

## 1. 指针的算数运算

C 指针是一个用数值表示的地址。因此，您可以对指针执行算术运算。可以对指针进行四种算术运算：++、--、+、-。

假设 ptr 是一个指向地址 1000 的整型指针，是一个 32 位的整数，让我们对该指针执行下列的算术运算：

```c
long num = 10;
long* ptr = &num;
ptr++;
```

在执行完上述的运算之后，ptr 将指向位置 1004，因为 ptr 每增加一次，它都将指向下一个整数位置，即当前位置往后移 4 字节。这个运算会在不影响内存位置中实际值的情况下，移动指针到下一个内存位置。如果 ptr 指向一个地址为 1000 的字符，上面的运算会导致指针指向位置 1001，因为下一个字符位置是在 1001。

我们概括一下：

指针的每一次递增，它其实会指向下一个元素的存储单元。
指针的每一次递减，它都会指向前一个元素的存储单元。
指针在递增和递减时跳跃的字节数取决于指针所指向变量数据类型长度，比如 long 就是 4 个字节。

## 2. 递增(递减)一个指针

我们喜欢在程序中使用指针代替数组，因为变量指针可以递增，而数组不能递增，数组可以看成一个指针常量。

下面的程序通过递增指针变量，以便按顺序访问数组中的每一个元素：

```c
#include <stdio.h>

#define LENGTH 3

int main() {
    int num[] = {10, 100, 200};
    int* ptr;
    /* 指针中的数组地址 */
    ptr = num;
    for (int i = 0; i < LENGTH; i++) {
        printf("num[%d] = %d ", i, *ptr);
        printf("num[%d] = %p\n", i, ptr);
        /* 指向下一个位置 */
        ptr++;
    }
    return 0;
}
```

输出的结果如下：

```plaintext
num[0] = 10 num[0] = 000000000061FE08
num[1] = 100 num[1] = 000000000061FE0C
num[2] = 200 num[2] = 000000000061FE10
```

同理我们可以递减一个指针，即把值减去其数据类型的字节数，如下所示：

```c
#include <stdio.h>

#define LENGTH 3

int main() {
    int num[] = {10, 100, 200};
    int* ptr;
    /* 指针中的数组地址 */
    ptr = &num[2];
    for (int i = LENGTH - 1; i >= 0; i--) {
        printf("num[%d] = %d ", i, *ptr);
        printf("num[%d] = %p\n", i, ptr);
        /* 指向上一个位置 */
        ptr--;
    }
    return 0;
}
```

输出的结果如下：

```plaintext
num[2] = 200 num[2] = 000000000061FE10
num[1] = 100 num[1] = 000000000061FE0C
num[0] = 10 num[0] = 000000000061FE08
```

下面是一个通过指针自增求数组所有元素之和的程序：

```c
#include <stdio.h>

#define LENGTH 10

int main() {
    int num[LENGTH] = {25, 20, 12, 36, 89, 65, 35, 45, 67, 34};
    int *ptr, sum;
    /* 指针中的数组地址 */
    ptr = num;
    printf("The arrey is [");
    for (int i = 0; i < LENGTH; i++) {
        printf("%d ", *ptr);
        sum += *ptr;
        ptr++;
    }
    printf("]\nThe sum of arrey is %d.\n", sum);
    return 0;
}
```
