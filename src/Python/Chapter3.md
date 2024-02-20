# 数据类型

数据类型是大多数编程语言的核心概念之一。数据类型定义了数据的性质，以及对这些数据可以执行的操作。编程语言使用数据类型来组织、存储和操作数据，以便程序可以正确地执行任务。

## 1. 变量赋值

Python 中的变量不需要声明。每个变量在使用前都必须赋值，变量赋值以后该变量才会被创建。

在 Python 中，变量就是变量，它没有类型，我们所说的"类型"是变量所指的内存中对象的类型。

等号（=）用来给变量赋值，也可以同时给多个变量赋值。

```py

integer = 10
floating_point = 10.0
character = "abcdefg"
a = b = c =10

```

## 2. 命名习惯

python 的中译为蟒蛇，大部分人习惯使用蛇形命名法来命名函数和变量，通常使用小写字母，并用下划线连接单词。例如：

```sh
my_variable
function_name
```

## 3. 标准数据类型

- Number（数字）
- String（字符串）
- bool（布尔类型）
- List（列表）
- Tuple（元组）
- Set（集合）
- Dictionary（字典）
- bytes(字节数组)

|  是否可变  |                数据类型                 |
| :--------: | :-------------------------------------: |
| 不可变数据 | Number(数字),String(字符串),Tuple(元组) |
|  可变数据  |  List(列表),Dictionary(字典),Set(集合)  |

## 4. Number 数字

Python3 支持 int、float、bool、complex（复数）。

在 Python 3 里，只有一种整数类型 int，表示为长整型，没有 python2 中的 Long。

整数的大小不受固定的上限限制，而是受限于系统的内存。在 Python 3 中，整数是无限精度的，可以表示任意大小的整数。

像大多数语言一样，数值类型的赋值和计算都是很直观的。

内置的 type() 函数可以用来查询变量所指的对象类型。

```py
a, b, c, d = 20, 5.5, True, 4+3j
print(type(a), type(b), type(c), type(d))
```

您也可以使用`del`语句删除一些对象引用。

要了解 Python 中整数的具体范围，可以使用 sys.maxsize 来获取系统上的最大整数值：

```py
import sys
print("最大整数值:", sys.maxsize)
```

## 5. 数值运算

|     运算     |  表达式  | 结果 |
| :----------: | :------: | :--: |
|     加法     |  3 + 4   |  7   |
|     减法     | 7.3 - 3  | 4.3  |
|     乘法     |  3 \* 7  |  21  |
| 除法(浮点数) |  2 / 4   | 0.5  |
|  除法(整数)  |  2 // 4  |  0   |
|     取余     |  17 % 3  |  2   |
|     乘方     | 2 \*\* 5 |  32  |

```py
num1 = 5
num2 = 2

print(num1 + num2)
print(num1 - num2)
print(num1 * num2)
print(num1 / num2)
print(num1 // num2)
print(num1 % num2)
print(num1 ** num2)
```

## 6. 字符串(string)

Python 中的字符串用单引号 ' 或双引号 " 括起来，同时使用反斜杠 \ 转义特殊字符。

字符串的截取的语法格式如下：

```py
str1 = 'Hello, World!'
str2 = "Python Programming"

full_string = str1 + " " + str2
print(full_string)  # 输出: Hello, World! Python Programming

substring = str1[0:5]
print(substring)  # 输出: Hello

index = str2.find("Pro")
print(index)  # 输出: 7

new_string = str1.replace("Hello", "Hi")
print(new_string)  # 输出: Hi, World!
```

## 6. 布尔类型(True,False)

布尔类型即 True 或 False。

在 Python 中，True 和 False 都是关键字，表示布尔值。

- 布尔类型只有两个值：True 和 False。

- 布尔类型可以和其他数据类型进行比较，比如数字、字符串等。在比较时，Python 会将 True 视为 1，False 视为 0。

- 布尔类型可以和逻辑运算符一起使用，包括 and、or 和 not。这些运算符可以用来组合多个布尔表达式，生成一个新的布尔值。

```py
is_true = True
is_false = False

result = 5 > 3
print(result)  # 输出: True

logical_result = True and False
print(logical_result)  # 输出: False
```

## 7. 列表(list)

列表(List)是一种有序、可变、可以包含不同数据类型的数据结构。列表是一种常见而强大的数据类型，允许你存储和操作一组数据。列表使用方括号 [] 定义，其中的元素可以通过索引访问，索引从 0 开始。

- 列表中的元素是有序的，可以通过索引访问。
- 列表的元素可以修改，也可以添加或删除元素。
- 列表可以包含不同数据类型的元素。

```py
my_list = [1, 2, 3, 'hello', True]

print(my_list[0])  # 输出: 1
print(my_list[3])  # 输出: 'hello'

my_list[1] = 42
print(my_list)  # 输出: [1, 42, 3, 'hello', True]

my_list.append('world')
print(my_list)  # 输出: [1, 42, 3, 'hello', True, 'world']

subset = my_list[1:4]
print(subset)  # 输出: [42, 3, 'hello']
```

## 8. 元组(Tuple)

元组(tuple)与列表类似，不同之处在于元组的元素不能修改。元组写在小括号`()`里，元素之间用逗号隔开。

元组可以解构赋值，可以轻松地将元组的值分配给变量。

```py
my_tuple = (1, 2, 'three', 4.0)

print(my_tuple[0])# 输出: 1
print(my_tuple[2])# 输出: 'three'

subset = my_tuple[1:3]
print(subset)# 输出: (2, 'three')

coordinates = (3, 4)
x, y = coordinates
print(f"X 坐标: {x}, Y 坐标: {y}")#输出X,Y坐标
```

## 9. 集合(set)

集合（Set）是一种无序、可变的数据结构，用于存储唯一的元素。集合中的元素不能重复，而且集合是无序的，因此不能通过索引访问。

集合使用大括号 {} 或者使用 set()构造函数来创建，集合是在某些情况下用于存储一组唯一元素的有用数据结构。

集合可以求，并集，交集，差集。

```py
my_set = {1, 2, 3, 4, 4, 5}

print(my_set)

my_set.add(6)
print(my_set)  # 输出: {1, 2, 3, 4, 5, 6}

my_set.remove(3)
print(my_set)  # 输出: {1, 2, 4, 5, 6}
```

```py
set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}

union_set = set1 | set2  # 并集
print(union_set)  # 输出: {1, 2, 3, 4, 5, 6}

intersection_set = set1 & set2  # 交集
print(intersection_set)  # 输出: {3, 4}

difference_set = set1 - set2  # 差集
print(difference_set)  # 输出: {1, 2}
```

## 10. 字典(Dictionary)

字典（Dictionary）是一种无序的数据结构，用于存储键值对（key-value pairs）。字典中的每个键都关联着一个值，形成了键值对的映射。字典使用花括号 {} 来定义，键和值之间使用冒号 : 分隔，键值对之间使用逗号 , 分隔。

字典在许多情况下都是一种非常有用的数据结构，特别是当需要通过名称（键）而不是索引来访问数据时。字典可以用来表示和操作各种信息，例如配置设置、用户信息等。键必须是不可变的类型，如字符串或数字，而值可以是任何类型。

```py
my_dict = {'name': 'mr-addict', 'age': 22, 'city': 'Nanjing'}

print(my_dict['name'])  # 输出: mr-addict
print(my_dict['age'])   # 输出: 22

my_dict['age'] = 23
print(my_dict['age'])   # 输出: 23

my_dict['occupation'] = 'engineer'
print(my_dict)  # 输出: {'name': 'mr-addict', 'age': 22, 'city': 'Nanjing', 'occupation': 'engineer'}

del my_dict['city']
print(my_dict)  # 输出: {'name': 'mr-addict', 'age': 22, 'occupation': 'engineer'}

print('name' in my_dict)  # 输出: True
print('gender' in my_dict)  # 输出: False
```

## 11. bytes 类型

`bytes`是一种不可变的二进制数据类型。bytes 对象表示一个字节序列，其中的每个元素是一个范围在 0 到 255 之间的整数,`bytes`类型在处理二进制数据时非常有用，特别是在网络编程、文件读写和加密等领域。

```py
my_bytes = b'hello'

# 访问bytes中的元素
print(my_bytes[0])  # 输出: 104

# 将bytes对象解码为字符串
bytes_to_str = my_bytes.decode('utf-8')
print(bytes_to_str)  # 输出: 'hello'
```

bytes 对象是不可变的，不能修改元素。

```sh
my_bytes = b'hello'
my_bytes[0] = 105
```

如上方的代码会引发`TypeError`

## 12. Try yourself

摄氏温度转华氏温度，取两位小数 `1.8 x 摄氏温度 = (华氏温度 - 32)`:

example: 摄氏度 15 => 华氏度 -9.44

```sh
#example
>>> 摄氏度:15
>>> 华氏度:-9.44
```

```py
#--------------------
#Enter your code below
#--------------------
```
