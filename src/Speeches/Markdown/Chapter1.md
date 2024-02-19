# 第一章——Markdown 语法

## 1. 标题

在 markdown 中你可以使用`#`标注标题：

| Markdown |   解释   |
| :------: | :------: |
|    #     | 一级标题 |
|    ##    | 二级标题 |
|   ###    | 三级标题 |
|   ####   | 四级标题 |
|  #####   | 五级标题 |
|  ######  | 六级标题 |

## 2. 段落

在 markdown 中，你可以对段落进行一些修饰，主要有：

### 2.1 换行

- 使用`两个以上空格`加上`回车`
- 使用`空行重新开始一个段落`

### 2.2 字体

|      Markdown      |       解释       |     输出结果     |
| :----------------: | :--------------: | :--------------: |
|    \*斜体文本\*    |     文字斜体     |    _斜体文本_    |
|   \*\*粗文本\*\*   |     加粗文本     |   **粗体文本**   |
| \*\*\*粗斜体\*\*\* | 加粗并且倾斜文字 | **_粗斜体文本_** |

### 2.3 分割线

连用三个以上的`*`，`-`或者`_`来建立一个分割线,行内不能有其他内容，例如`***`将会输出：

---

### 2.4 删除线

在文字两端都加上两个波浪线\~\~，例如`~~Markdowm~~`将会输出：

~~Markdowm~~

### 2.5 下划线

下划线的功能只能使用 HTML 的\<u>和\<u>标签来实现，例如`<u>带下划线文本</u>`将会输出：

<u>带下划线文本</u>

## 3. 列表

### 3.1 无序列表

Markdown 支持有序列表和无序列表。

无序列表使用星号`*`，加号`+`或是减号`-`作为列表标记，这些标记后面要添加一个空格，然后再填写内容。

例如：

```plaintext
- 列表一
- 列表二
- 列表三
- 列表四
```

将会输出:

- 列表一
- 列表二
- 列表三
- 列表四

### 3.2 有序列表

有序列表使用数字并加上`.`号来表示，有序内标将`忽略.前的数字`，但是一定要有数字。

例如：

```plaintext
1. 列表1
4. 列表2
8. 列表3
3. 列表4
    1. 列表4-1
    3. 列表4-2
```

将会输出:

1. 列表 1
2. 列表 2
3. 列表 3
4. 列表 4
   1. 列表 4-1
   2. 列表 4-2