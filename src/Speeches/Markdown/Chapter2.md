# 第一章——Markdown 语法

## 1. 代码

在 Markdown 中标注代码主要有三种方法。

### 1.1 第一种，使用`

段落上的一个函数或片段的代码可以用反引号\`把它包起来，例如 **\`printf()\`** 将会输出：

`printf()`

### 1.2 第二种，使用制表符

代码区块使用 4 个空格或者一个制表符（Tab 键）。

例如：

```plaintext
    #include <stdio.h>

    int main(){
        printf("Hello world!");
        return 0;
    }
```

将会输出:

    #include <stdio.h>

    int main(){
        printf("Hello world!");
        return 0;
    }

### 1.3 第三种，使用```

用```包裹一段代码，并指定一种语言（也可以不指定）。

例如：

```c
#include <stdio.h>

int main(){
    printf("Hello world!");
    return 0;
}
```

## 2. 链接

使用`[]`，`()`或者`<>`将链接地址包括。

例如：

```plaintext
[google](https://www.google.com)

[百度](https://www.baidu.com)
```

将会输出:

[google](https://www.google.com)

[百度](https://www.baidu.com)

## 3. 图片

格式：

- 开头一个感叹号 !
- 接着一个方括号，里面放上图片的替代文字
- 接着一个普通括号，里面放上图片的网址，最后还可以用引号包住并加上选择性的 'title' 属性的文字。

例如：

```plaintext
![老友记](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic4.zhimg.com%2Fv2-2e5240f843638b567930ab2b765e1cd0_1200x500.jpg&refer=http%3A%2F%2Fpic4.zhimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650372506&t=1f1d3e9d41d792cf4f7b03630101f367)

![老友记](Images/1-1.jpeg)
```

将会输出:

![老友记](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic4.zhimg.com%2Fv2-2e5240f843638b567930ab2b765e1cd0_1200x500.jpg&refer=http%3A%2F%2Fpic4.zhimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650372506&t=1f1d3e9d41d792cf4f7b03630101f367)

![老友记](Images/1-1.jpeg)

## 4. 表格

使用`|`来分隔不同的单元格，使用`-`来分隔表头和其他行。

例如：

```plaintext
| 表头   | 表头   |
| ------ | ------ |
| 单元格 | 单元格 |
| 单元格 | 单元格 |
```

将会输出：

| 表头   | 表头   |
| ------ | ------ |
| 单元格 | 单元格 |
| 单元格 | 单元格 |

对齐方式：

- -: 设置内容和标题栏居右对齐。
- :- 设置内容和标题栏居左对齐。
- :-: 设置内容和标题栏居中对齐。

例如：

```plaintext
| 左对齐     |    居中    |     右对齐 |
| :--------- | :--------: | ---------: |
| 单元格     |   单元格   |     单元格 |
| 单元格元素 | 单元格元素 | 单元格元素 |
```

将会输出：

| 左对齐     |    居中    |     右对齐 |
| :--------- | :--------: | ---------: |
| 单元格     |   单元格   |     单元格 |
| 单元格元素 | 单元格元素 | 单元格元素 |
