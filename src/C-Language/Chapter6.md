# 第六章——循环 while 和 do/while

## 1. while

只要给定的条件为真，while 循环语句会重复执行其后代码块中的内容。

语法：

```c
while(/*布尔表达式*/)
{
   // 如果布尔表达式为真将执行的语句
}
```

在这里，while 循环的关键点是循环可能一次都不会执行。当条件为 false 时，会跳过循环主体，直接执行紧接着 while 循环的下一条语句。

下面是一个输出 0-10 中偶数的实例：

```c
#include <stdio.h>

int main() {
    int count = 0;
    while (count < 10) {
        // 如果是偶数则输出该数
        if (count % 2 == 0)
            printf("%d\n", count);
        count++;
    }
    return 0;
}
```

## 2. 循环控制语句

在 while 循环中我们可以通过其他语句来控制循环的过程。

C 语言中有以下三个循环控制语句：

| 控制语句 |                          描述                          |
| :------: | :----------------------------------------------------: |
|  break   |                 终止循环或 switch 语句                 |
| continue |    告诉一个循环体立刻停止本次循环，重新开始下次循环    |
|   goto   | 将控制转移到被标记的语句，不建议在程序中使用 goto 语句 |

如果在上面的代码中加入 break，则可以改成如下代码：

```c
#include <stdio.h>

int main() {
    int count = 0;
    while (1) {
        if (count % 2 == 0)
            printf("%d\n", count);
        count++;
        if (count >= 10)
            break;
    }
    return 0;
}
```

如果在上面的代码中加入 continue，则可以改成如下代码：

```c
#include <stdio.h>

int main() {
    int count = 0;
    while (count < 10) {
        if (count % 2 == 1) {
            count++;
            continue;
        } else
            printf("%d\n", count);
        count++;
    }
    return 0;
}
```

## 3. do/while 语句

do/while 循环是在循环的尾部检查它的条件。

do/while 循环与 while 循环类似，但是 do/while 循环会确保至少执行一次循环。

语法：

```c
do
{
   statement(s);
}while( condition );
```

将上面的例子改成 do/while 语句后，代码如下：

```c
#include <stdio.h>

int main() {
    int count = 0;
    do {
        if (count % 2 == 0)
            printf("%d\n", count);
        count++;
    } while (count < 10);
    return 0;
}
```

## 4. 小测试

- **输入一个整数，计算出该整数的位数。**
- **输入一个整数，逆向输出该数，如输入 123456，反向输出 654321.**
