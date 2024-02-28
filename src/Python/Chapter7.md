# 循环语句

## 1. While 循环语句

```sh
while 判断条件(condition)：
    执行语句(statements)……
```

执行语句可以是单个语句或语句块。判断条件可以是任何表达式，任何非零、或非空（null）的值均为 true。当判断条件假 false 时，循环结束。

可以通过下图来简单了解循环句的执行过程:

![alt text](Images/whileProcess.png)

示例：

```py
count = 0
while (count < 5):
   print ('The count is:', count)
   count = count + 1
print("Good bye!")
```

## 2. 跳过和退出循环

while 语句时还有另外两个重要的命令 continue，break 来跳过循环，continue 用于跳过该次循环，break 则是用于退出循环，此外"判断条件"还可以是个常值，表示循环必定成立，具体用法如下：

```py
i = 0
while i < 5:
    i += 1
    print(i)
    if i % 2 == 0:
        continue

j = 0
while j < 5:
    j += 1
    print(j)
    if j % 2 == 0:
        break
```

## 3. 无限循环

while 语句中如果`条件`为`true`的情况时，循环会无限的执行下去，下面是示例：

```py
# ！！不建议尝试运行
i = 0
while True:
    i += 1
    print(i)
```

## 4. while...else 语法

在 `while … else` 在循环条件为 `false` 时执行`else` 语句块：

```py
count = 0
while count < 5:
  print (count,"小于5"),
  count += 1
else:
  print (count,"大于5"),
```

## 5. 简单 while 语句

假如你的 while 循环体只有一条语句的话，可以使用一行 while 语句来实现。

```py
# ！！不建议尝试运行
condition = True
while(condition):print ("Hello World!")
```
