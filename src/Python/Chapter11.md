# 模块导入

Python 允许在一个程序中导入多个模块。导入模块的语法如下：

## import 语句

```python
import module1, module2, module3
```

可以新建一个`fibo.py`文件，内容如下：

```python
def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)
```

然后可以在主文件`main.py`中导入`fibo.py`模块：

```python
import fibo
print(fibo.fib(10))
```
运行`main.py`文件，输出结果为`55`。

## from...import 语句   

如果只需要导入模块中的特定函数，可以使用`from...import`语句：

```python
from fibo import fib
print(fib(10))
```

## from … import * 语句

如果要导入模块中的所有函数，可以使用`from...import *`语句：

但是不推荐使用，因为会导致命名空间污染，容易造成命名冲突。

```python
from fibo import *
print(fib(10))
```

