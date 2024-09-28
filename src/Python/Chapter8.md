# 小测验

你已经学习了python中的一些基本语法，下面请你回答以下问题，来练一练手。

如果遇到了不会的题目，可以参考答案`答案在评论区`，有疑问可以在评论区提问。

**1. 制作一个斐波那契数列生成器，要求用户输入一个整数n，然后生成n个斐波那契数列的元素。例如，用户输入n=5，则生成的斐波那契数列为：0，1，1，2，3。**
```python
zhihu = 0
l = [0, 1]
n = int(input("请输入一个整数："))
for i in range(2, n):
    zhihu = l[i-1] + l[i-2]
    l.append(zhihu)
print(l)
```

**2. 编写一个代码，输入一个整数n，判断n是否为素数。如果n是素数，则输出“是素数”，否则输出“不是素数”。**
```python
n = int(input("请输入一个整数："))
if n < 2:
    print("不是素数")
else:
    for i in range(2, n):
        if n % i == 0:
            print("不是素数")
            break
    else:
        print("是素数") 
```

**3. 编写一个代码，输入一个整数n，判断n是否为回文数。如果n是回文数，则输出“是回文数”，否则输出“不是回文数”。**
```python
n = int(input("请输入一个整数："))
m = n
reverse = 0
while m > 0:
    reverse = reverse * 10 + m % 10
    m //= 10
if n == reverse:
    print("是回文数")
else:
    print("不是回文数")
```

**4. 水仙花数：一个3位数，其各位数字的立方和等于该数本身。例如，153是一个水仙花数，因为153=1的立方+5的立方+3的立方。编写一个程序，输入一个3位数，判断它是否为水仙花数。**
```python
n = int(input("请输入一个3位数："))   
if n < 10 or n > 99:
    print("不是水仙花数")
    else:
    a = n // 100
    b = (n % 100) // 10
    c = n % 10
    if a ** 3 + b ** 3 + c ** 3 == n:
        print("是水仙花数")
    else:
        print("不是水仙花数")
```

**5. 编写一个程序，能够随机生成100以内的`加减法`，并且在`前面有题号`，`后面有正确答案`。**
```python
import random

for i in range(1, 101):
    a = random.randint(1, 100)
    b = random.randint(1, 100)
    operator = random.choice(['+', '-'])
    if operator == '+':
        answer = a + b
    else:
        answer = a - b if a >= b else b - a 
    
    print(f"{i}. {a} {operator} {b} = {answer}")
```