# 第五章——条件判断if和switch

## 1. 判断条件的真假

条件判断，即为判断一个或者多个事件的真假性，然后执行对应的语句。

在C语言中，把任何**非零**和**非空**的值假定为**true**，把**零**或 **null**假定为**false**。

下面是一个真假值表：

|  真  |  假   |
| :--: | :---: |
|  1   |   0   |
| true | false |
|  2   |  !2   |
| 3<4  |  3>4  |

C 语言提供了以下类型的判断语句。

|  语句   |                         描述                          |
| :-----: | :---------------------------------------------------: |
|   if    | 一个 if 语句 由一个布尔表达式后跟一个或多个语句组成。 |
| if/else | 一个 if 语句 由一个布尔表达式后跟一个或多个语句组成。 |
| switch  | 一个 switch 语句允许测试一个变量等于多个值时的情况。  |

## 2. if语句

只要if()中条件判断为真，则执行{}中的代码块，没有{}则仅执行if后的一条语句。

语法：

```c
if(/*布尔表达式*/)
{
    // 布尔表达式为真时执行的语句
}
```

## 3. if/else语句

同if语句一样，条件成立执行if后的代码块，为假执行else后的代码块。

语法：

```c
if(/*布尔表达式*/)
{
   // 如果布尔表达式为真将执行的语句
}
else
{
   // 如果布尔表达式为假将执行的语句
}
```

下面是一个判断输入的年龄是否是未成年的实例

```c
#include <stdio.h>

int main() {
    int input;
    printf("Input your age:");
    scanf("%d", &input);
    if (input < 18) {
        printf("You're an underage!");
    } else {
        printf("Congratulations! You're already an adult!");
    }
    return 0;
}
```

## 4. 嵌套if/else if/else

我们可以在if/else后添加另外一个if，添加更多的判断语句。

语法：

```c
//条件判断一
if(/*布尔表达式*/)
{
    // 如果布尔表达式为真将执行的语句
}
//条件判断二
else if(/*布尔表达式*/)
{
    // 如果布尔表达式为真将执行的语句
}
//条件判断三
else
{
    // 如果布尔表达式为假将执行的语句
}
```

试通过C语言编程完成以下个人所得税的问题：

```plaintext
假设国家对个人收入调节税是按这样的标准进行的:
起征点是1000元,1000-2000元为5%,2000-3000元为10%,
3000-5000元为15%,5000元以上为20%.
通过编程输入工资,计算实际工资。
```

参考代码如下：

```c
#include <stdio.h>

int main() {
    float salary, tax;
    printf("Input your salary:");
    scanf("%f", &salary);
    if (salary < 1000) tax = 0;
    else if (salary < 2000) tax = 0.05;
    else if (salary < 3000) tax = 0.1;
    else if (salary < 5000) tax = 0.15;
    else tax = 0.2;

    salary = salary * (1 - tax);
    printf("Your final salary is %.2f", salary);
    return 0;
}
```

## 5. switch语句

switch语句的功能和if/else if/else 相像。

语法：

```c

switch (expression)
{
    case constant - expression:
        statement(s);
        break; /* 可选的 */
    case constant - expression:
        statement(s);
        break; /* 可选的 */

    /* 您可以有任意数量的 case 语句 */
    default: /* 可选的 */
        statement(s);
}
```

- **在一个 switch 中可以有任意数量的 case 语句。每个 case 后跟一个要比较的值和一个冒号。**
- **case 的 constant-expression 必须与 switch 中的变量具有相同的数据类型，且必须是一个常量。**
- **当被测试的变量等于 case 中的常量时，case 后跟的语句将被执行，直到遇到 break 语句为止。**
- **当遇到 break 语句时，switch 终止，控制流将跳转到 switch 语句后的下一行。**
- **不是每一个 case 都需要包含 break。如果 case 语句不包含 break，控制流将会 继续 后续的 case，直到遇到 break 为止。**
- **一个 switch 语句可以有一个可选的 default case，出现在 switch 的结尾。default case 可用于在上面所有 case 都不为真时执行一个任务。default case 中的 break 语句不是必需的。**
- **相同的标签不能出现两次。**

大家可以试着将上面的薪资问题改成switch，以增进对switch的认识。

参考代码如下：

```c
#include <stdio.h>

int main() {
    float salary, tax;
    printf("Input your salary:");
    scanf("%f", &salary);

    switch ((int)(salary / 1000)) {
        case 0: tax = 0; break;
        case 1: tax = 0.05; break;
        case 2: tax = 0.1; break;
        case 3:
        case 4: tax = 0.15; break;
        default: tax = 0.3; break;
    }

    salary = salary * (1 - tax);
    printf("Your final salary is %.2f", salary);
    return 0;
}
```

## 6. 小测试

- **输入一个整数，判断该数是偶数还是奇数。**
- **输入三个整数，求出三个数中的最大值。**
