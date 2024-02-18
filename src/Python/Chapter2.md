# python 基础语法

## 1.Hello world!

输出`Hello world!`程序通常是由新编程语言的学生编写的第一个程序,python只需要一行就能完成。

```sh
print("Hello world!")
```
## 2.标识符

- 第一个字符必须是字母表中字母或下划线`_`。

- 标识符的其他的部分由字母、数字和下划线组成。

- 标识符对大小写敏感。

## 3.保留字

python标准库中有`keyword`模块，可以输出目前版本的保留字：

```py
>>> import keyword
>>> keyword.kwlist
>>> ['False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']
```

## 4. 注释

Python中单行注释以`#`开头，实例如下：

```py
# comment
print("hello world!")
```

多行注释通常使用`'''`或`"""`

```py
'''
first comment
second comment
'''
```

## 5. 行与缩进

缩进是python的一大特色,不同于C语言的`{}`

```py
if True:
    print ("True")
else:
    print ("False")
```

在不同的位置缩进极可能会有不同的实现效果

```py 
#缩进一致的循环体
for i in range(3):
    print("i",i)
    for j in range(3):
        print("j",j)
#缩进不一致的循环体
for i in range(3):
    print("i",i)
  for j in range(3):
    print("j",j)
```

第一个能正常运行，第二个就会报错，内部循环的缩进不一致，导致它无法正确嵌套在外部循环中，因此会产生缩进错误

```py
IndentationError: unindent does not match any outer indentation level
```

## 6. 多行语句

大部分情况下，python都要求一行完整语句，但是如果有特殊情况的话就需要反斜杠`\`实现多行语句。

但是数组`[]`，字典`{}`，元组`()`不使用反斜杠

```py
#换行
item = num1 + \
       num2
#数组
item = [num1,num2,num3]
```

## 7. 数字类型

python中有四种数字类型


|        表达式     |       数据类型   |举例       |
| ----------------- | --------------- |----------- |
|      **int**      |      整数类型    |114        |
|     **bool**      |      布尔类型    |True,false|
|      **float**    |      浮点数      |114.51        |
|    **complex**    |      复数        |1 + 2j , 3 + 3.2j|

## 8. 字符串

- pyhton 由 UTF-8 编码，字符串可以是 unicode 字符串。
  
- Python 中单引号 ' 和双引号 " 使用完全相同。

- 使用三引号(''' 或 """)可以指定一个多行字符串。

- 反斜杠可以用来转义，使用 r 可以让反斜杠不发生转义。 如 r"this is a line with \n" 则 \n 会显示，并不是换行。

- 按字面意义级联字符串，如 "this " "is " "string" 会被自动转换为 this is string。

- 字符串可以用 + 运算符连接在一起，用 * 运算符重复。

- Python 中的字符串有两种索引方式，从左往右以 0 开始，从右往左以 -1 开始。

- `str[1:4:2]`中`1`为起始位置,`4`为结束位置，`2`为步长。

```py
str = "abcdefg"
print (str[1:4:2])
```

## 9. 用户输入

`input`用户输入也是程序重要的一部分，执行下面的程序会要求输入次数。

```py
count = int(input("输入需要多少次Hello world: "))
for _ in range(count):
    print("Hello world")
```
## 10. 代码组

缩进相同的一组语句构成一个代码块，我们称之代码组。

像if、while、def和class这样的复合语句，首行以关键字开始，以冒号( : )结束，该行之后的一行或多行代码构成代码组。

我们将首行及后面的代码组称为一个子句(clause)。

如下实例：
```py
# Get user input
choice = input("Enter True, False, or any other value: ")
choice_lower = choice.lower()
if choice_lower == 'true':
    print("It's True")
elif choice_lower == 'false':
    print("It's False")
else:
    print("Input: " + choice)
```

## 11. 导入库或模块

- 在python中使用`import`或者`from...import`来导入相应的模块。

- 将整个模块(somemodule)导入，格式为： `import somemodule`

- 从某个模块中导入某个函数,格式为： `from somemodule import somefunction`

- 从某个模块中导入多个函数,格式为：` from somemodule import firstfunc, secondfunc, thirdfunc`

- 将某个模块中的全部函数导入，格式为： `from somemodule import *`
