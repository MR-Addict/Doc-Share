# 第二章——HTML 基础

## 一、Hello world

```html
<!DOCTYPE html>
<html>
  <head>
    <title>This is a title.</title>
  </head>
  <body>
    <p>Hello world!</p>
  </body>
</html>
```

简单说明：

> - `<!DOCTYPE html>`用于声明这是一个 HTML 文档
> - `<head></head>`表示头部元素，一般不可见
>   - `<title></title>`标签页标题
> - `<body></body>`网页主体，显示可见内容
>   - `<p></p>`段落标签，用于显示文章段落文本

## 二、HTML 的标签元素

HTML 文档由嵌套的 HTML 元素构成。它们用 HTML 标签表示，包含于**尖括号**中，如`<p>`。

在一般情况下，一个元素由一对标签表示：**开始标签**`<p>`与**结束标签**`</p>`。元素如果含有文本内容，就被放置在这些标签之间。

在开始与结束标签之间也可以封装另外的标签，包括标签与文本的混合。这些**嵌套元素**是父元素的子元素。

开始标签也可包含**标签属性**。这些属性有诸如标识文档区块、将样式信息绑定到文档演示和为一些如`<img>`等的标签嵌入图像、引用图像来源等作用。

一些元素如换行符`<br>`，不允许嵌入任何内容，无论是文字或其他标签。这些元素只需一个**单一的空标签**（类似于一个开始标签），无需结束标签。

许多标签是可选的，尤其是那些很常用的段落元素`<p>`的闭合端标签。HTML 浏览器或其他介质可以从上下文识别出元素的闭合端以及由 HTML 标准所定义的结构规则。这些规则非常复杂，不是大多数 HTML 编码人员可以完全理解的。

因此，一个 HTML 元素的一般形式为：`<tag attribute1="value1" attribute2="value2">content</tag>`。一些 HTML 元素被定义为空元素，其形式为`<tag attribute1="value1" attribute2="value2">`。空元素不能封装任何内容。例如`<br>`标签或内联标签`<img>`。一个 HTML 元素的名称即为标签使用的名称。

> 注意，结束标签的名称前面有一个斜杠“/”，空元素不需要也不允许结束标签。如果元素属性未标明，则使用其默认值。

## 三、标签示例

标题：HTML 标题由`<h1>`到`<h6>`六个标签构成，字体由大到小递减：

```html
<h1>Heading level 1</h1>
<h2>Heading level 2</h2>
<h3>Heading level 3</h3>
<h4>Heading level 4</h4>
<h5>Heading level 5</h5>
<h6>Heading level 6</h6>
```

段落：

```html
<p>第一段</p>
<p>第二段</p>
```

换行：`<br>`：

```html
<p>這是<br />一個<br />使用換行<br />段落</p>
```

链接：

```html
<a href="https://punch.mraddict.top/" target="_blank">技术开发部的值班笔记！</a>
```

注释：

```html
<!-- This is a comment -->
```

文档引用：

```html
<script src="index.js"></script>
<link rel="stylesheet" href="style.css" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
```
