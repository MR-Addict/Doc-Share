# lambda 函数

lambda 函数是python中的匿名函数，它可以用来创建小型的、一次使用的函数，lambda 函数通常只包含一行代码，这使得它们适用于编写简单的函数。

使用lambda函数可以让你的代码更加简洁，更加优雅。

## 语法

```
lambda arguments: expression
```

-`arguments`：函数的参数，可以有多个参数，用逗号分隔。
-`expression`：函数的表达式，可以是任意有效的Python表达式。

下面是一个例子：
```py
a = lambda: "Hello, world!"
print(a())  # 输出: Hello, world!
```

**lambda函数也可以传入参数**

```py
b = lambda x: x**2
print(b(2))  # 输出: 4
```
**lambda函数也可以有多个参数**

```py
c = lambda x, y: x + y
print(c(2, 3))  # 输出: 5
```

**同时lambda函数也可以作为函数的返回值,以及函数传入的参数。**

```py
def add(x, y):
    return lambda: x + y

d = add(2, 3)
print(d())  # 输出: 5
```

## 应用 

lambda函数可以用来简化代码，提高代码的可读性。 
```py
# 传统方式
def add(x, y):
    return x + y
add(2, 3)  # 输出: 5

# 使用lambda函数 
print((lambda x, y: x + y)(2, 3))  # 输出: 5
```
