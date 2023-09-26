# 第十七章——结构体(struct)

## 1. 结构体

**结构**是C编程中另一种用户自定义的可用的数据类型，它允许存储不同类型的数据项。

假如我们要定义一个有关日期格式的数据类型，可能会用到以下几个数据：

- **year**
- **month**
- **date**
- **hour**
- **minute**
- **second**

那么我们该如何定义这样一个自定义的数据类型呢。

## 2. 定义结构体

为了定义结构，您必须使用 struct 语句。struct 语句定义了一个包含多个成员的新的数据类型，struct 语句的格式如下：

```c
struct tag
{
    member-list
    member-list
    member-list
    ...
} variable-list;
```

tag 是结构体标签。

member-list 是标准的变量定义，比如 int i; 或者 float f，或者其他有效的变量定义。

variable-list 结构变量，定义在结构的末尾，最后一个分号之前，您可以指定一个或多个结构变量。

下面是声明Time结构的方式：

```c
struct Time
{
    int year;
    int month;
    int date;
    int hour;
    int minute;
    int second;
} now;
```

在一般情况下，tag、member-list、variable-list 这 3 部分至少要出现 2 个。

下面是三个定义结构的实例：

```c
//此声明声明了拥有3个成员的结构体，分别为整型的a，字符型的b和双精度的c
//同时又声明了结构体变量s1
//这个结构体并没有标明其标签
struct
{
    int a;
    char b;
    double c;
} s1;
```

```c
//此声明声明了拥有3个成员的结构体，分别为整型的a，字符型的b和双精度的c
//结构体的标签被命名为SIMPLE,没有声明变量
struct SIMPLE
{
    int a;
    char b;
    double c;
};
//用SIMPLE标签的结构体，另外声明了变量t1、t2、t3
struct SIMPLE t1, t2[20], *t3;
```

```c
//也可以用typedef创建新类型
typedef struct
{
   int a;
   char b;
   double c;
} Simple2;
//现在可以用Simple2作为类型声明新的结构体变量
Simple2 u1, u2[20], *u3;
```

## 3. 结构体变量的初始化

和其它类型变量一样，对结构体变量可以在定义时指定初始值。

下面是一个初始化结构体的实例：

```c
#include <stdio.h>

struct Time {
    int year;
    int month;
    int date;
    int hour;
    int minute;
    int second;
} now = {2022, 2, 5, 12, 30, 0};

int main() {
    printf("%d-%d-%d %d:%d:%d\n", now.year, now.month, now.date, now.hour,
           now.minute, now.second);
    return 0;
}
```

## 4. 结构体作为函数参数

下面是一个结构体作为函数参数的实例：

```c
#include <stdio.h>

struct Time {
    int year;
    int month;
    int date;
    int hour;
    int minute;
    int second;
} now = {2022, 2, 5, 12, 30, 0};

void getTime(struct Time time) {
    printf("%d-%d-%d %d:%d:%d\n", time.year, time.month, time.date, time.hour,
           time.minute, time.second);
}

int main() {
    getTime(now);
    return 0;
}
```

总之，结构体作为一种用户自定义的数据类型同其他数据类型一样，具有同等的功能，可以作为参数，可以作为返回值，可以使用指针，可以创建数组等等，这里仅作简单介绍，更多内容可自行学习。
