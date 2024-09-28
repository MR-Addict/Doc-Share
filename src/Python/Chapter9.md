# 函数

前面已经学习了很多基础的语法，现在，我们需要学会封装代码，将代码封装成函数，这样可以提高代码的复用性，降低代码的复杂度。

## 1. 语法
```
def 函数名(参数列表):
    函数体
```

让我们用`def`来输出`"Hello, World!"`：
```py
def say_hello():
    print("Hello, World!")

say_hello()
```
## 2. 参数传递

在python中可以传递多种参数，可以是**不可变参数**、**可变参数**、**关键字参数**、**默认参数**。

**传递不可变参数**

```py
def add(a, b):
    return a + b

print(add(1, 2)) # 3
```

**传递可变参数**

```py
def add_list(lst):
    total = 0    
    for num in lst:
        total += num
    return total

print(add_list([1, 2, 3, 4, 5])) # 15
```
**传递关键字参数**

```py
def greet(name, age):
    print("Hello, " + name + ", you are " + str(age) + " years old.")

greet(name="John", age=25) # Hello, John, you are 25 years old.
```
**传递默认参数**

```py
def greet(name, age=25):
    print("Hello, " + name + ", you are " + str(age) + " years old.")

greet("John") # Hello, John, you are 25 years old.
```

在python开发中，函数的参数传递是很重要的一部分，会让你的代码更加灵活，更加易于维护。

## 3. return语句

函数的return语句用于返回函数的结果，如果没有return语句，函数的返回值是None。

```py
def add(a, b):
    return a + b

print(add(1, 2)) # 3
``` 
如果函数没有return语句，则默认返回None。

