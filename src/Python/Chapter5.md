# 运算符

python 中主要有七类运算符。

包括算术运算符、比较运算符、逻辑运算符、位运算符、赋值运算符、身份运算符和成员运算符。

## 1. 算数运算符

可以参考上一篇 [数值运算](https://book.jinhun.moe/Python/Chapter3.html#5-%E6%95%B0%E5%80%BC%E8%BF%90%E7%AE%97)

## 2. 比较运算符

此时假设 `a = 1 b = 2` 。

| 运算符 |   描述   |          实例           |
| :----: | :------: | :---------------------: |
|   ==   |   等于   | (a == b) return False。 |
|   !=   |  不等于  | (a != b) return True。  |
|   >    |   大于   | (a > b) return False。  |
|   <    |   小于   |  (a < b) return True。  |
|   >=   | 大于等于 | (a >= b) return False。 |
|   <=   | 小于等于 | (a <= b) return True。  |

```py
x = 1
y = 2

print(x == y,x != y,x > y,x < y,x >= y,x <= y)
```

## 3. 赋值运算符

此时假设 `a = 1 b = 2 c = 3` 。

| 赋值运算符 |  描述  |           实例            |
| :--------: | :----: | :-----------------------: |
|     =      |  等于  |  c = a + b => a + b = c   |
|     +=     |  加法  |    c += a => c = c + a    |
|     -=     |  减法  |    c -= a => c = c - a    |
|    \*=     |  乘法  |   c \*= a =>c = c \* a    |
|     /=     |  除法  |    c /= a => c = c / a    |
|     %=     |  取模  |    c %= a => c = c % a    |
|   \*\*=    |   幂   | c \*\*= a => c = c \*\* a |
|    //=     | 取整除 |   c //= a => c = c // a   |

```py
a, b, c = 1, 2, 3
d = a

print(a, b, c, d, a + b, b - c, c * a)
```

## 4. 位运算符

位运算符是把数字看作二进制来进行计算的。

位运算符通常用于处理底层的位操作，例如在编码、加密、图形处理等领域。在一般情况下，位运算符不太常见，但在某些特定的计算机科学和嵌入式系统的应用中非常有用。

下表中变量 a 为 60，b 为 13 二进制格式如下：

```py

a , b, c = 2 , 1 , 0

c = a & b
print ("1 - c 的值为：", c)

c = a | b
print ("2 - c 的值为：", c)

c = a ^ b
print ("3 - c 的值为：", c)

c = ~a
print ("4 - c 的值为：", c)

c = a << 2
print ("5 - c 的值为：", c)

c = a >> 2
print ("6 - c 的值为：", c)
```

## 5. 逻辑运算符

逻辑运算符通常用于控制程序的流程，例如在条件语句中判断多个条件。逻辑运算符返回布尔值，可以帮助你在程序中做出合理的决策。

与`and`或`or`非` not`

```py
# 逻辑与
x = True
y = False
print(x and y , x or y , not x)  # 输出: False True False
```

## 6. 成员运算符

成员运算符用于检查某个值是否属于序列（例如列表、元组、字符串等）中。在 Python 中，常用的成员运算符包括：

in：如果在序列中找到指定的值，则返回`True`，否则返回`False`。

not in：如果在序列中找到指定的值，则返回`False`，否则返回`True`。

成员运算符常用于在条件语句中检查某个值是否存在于给定的序列中。

```py
numbers = [1, 2, 3, 4, 5]

print(3 in numbers)  # 输出: True
print(6 not in numbers)  # 输出: True

string = "Hello, World!"

print("Hello" in string)  # 输出: True
print("Python" not in string)  # 输出: True
```

## 7. 身份运算符

身份运算符用于比较对象的存储地址，判断它们是否是同一个对象。在 Python 中，有两个身份运算符：`is` 和 `is not`。

is：如果两个变量引用同一个对象，则返回 `True`；否则返回 `False`。

is not：如果两个变量引用的不是同一个对象，则返回 `True`；否则返回 `False`。

```py
a = [1, 2, 3]
b = a  # b引用了和a相同的对象

print(a is b)   # 输出: True，因为a和b引用同一个对象
print(a is not b)  # 输出: False，因为a和b引用同一个对象

c = [1, 2, 3]

print(a is c)   # 输出: False，因为a和c引用不同的对象
print(a is not c)  # 输出: True，因为a和c引用不同的对象
```

虽然 a 和 c 都是[1,2,3]的数组，但是由于存储地址不同，所以 a 不是 c。

## 8. Try yourself

通过用户输入三角形三边长度，并计算三角形的面积，面积公式：s = (d(d-a)(d-b)(d-c))<sup>0.5</sup>。

```sh
#example
>>> 输入三角形的三条边长度，用空格分隔: 2 5 6
>>> 三角形的面积：4.68
```

```py
#--------------------
#Enter your code below
#--------------------
```
