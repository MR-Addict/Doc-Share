# 条件语句

条件语句是编程中用于根据条件执行不同代码块的结构。常用的条件语句有 `if`、`elif`（else if 的缩写）和`else`。

## 1. 条件控制

可以通过下图来简单了解条件语句的执行过程:

<div style="text-align: center;">
    <img src="./Images/ifProcess.png" height="300px" style="display: inline-block;">
</div>

## 2. if 语句

`if` 语句用于根据条件执行不同的代码块。下面是一个简单的例子:

随机取 1-20 间的一个数来和 10 比较大小。

```py
import random
number = random.randint(1, 20)

# 判断数字的正负零
if number > 10:
    print("大于10")
elif number == 10:
    print("等于10")
else:
    print("小于10")
print(number)
```

## 3. 操作运算符

以下为 if 中常用的操作运算符:

| 操作符 |           描述           |
| :----: | :----------------------: |
|   <    |           小于           |
|   <=   |        小于或等于        |
|   >    |           大于           |
|   >=   |        大于或等于        |
|   ==   | 等于，比较两个值是否相等 |
|   !=   |          不等于          |

## 4. if 嵌套

在嵌套 if 语句中，可以把 if...elif...else 结构放在另外一个 if...elif...else 结构中。

```py
import random
num1 = random.randint(1, 20)
num2 = random.randint(1, 20)

if num1 == num2:# 外层if语句检查两个数是否相等
    print("两个数相等。")
else:
    if num1 > num2:# 内层if语句检查哪个数更大
        print(f"{num1} 大于 {num2}。")
    else:
        print(f"{num1} 小于 {num2}。")
```

## 5. match...case

Python 3.10 引入的新特性，用于模式匹配（Pattern Matching）。它是一种更灵活、清晰的方式来处理复杂的条件分支，尤其适用于对数据结构进行模式匹配和解构。

```py
import random
data = random.randint(1, 20)
match data:
    case 0:
        print("数据为零")
    case 1 | 2:
        print("数据为1或2")
    case int(n) if n > 2:
        print(f"数据为大于2的整数: {n}")
    case str(s):
        print(f"数据为字符串: {s}")
    case _:
        print("未匹配到任何模式")
```

! !**请注意**，match...case 是在 Python 3.10 版本引入的，因此如果你使用的是较旧的 Python 版本，可能需要升级到 Python 3.10 才能使用这个特性。

`match...case` 更多内容参考[Python match](https://docs.python.org/3/whatsnew/3.10.html#pep-634-structural-pattern-matching)
