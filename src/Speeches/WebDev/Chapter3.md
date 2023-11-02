# 第三章——CSS 基础

## 一、Hello world

```html
<!DOCTYPE html>
<html>
  <head>
    <title>This is a title.</title>
    <style>
      body {
        background: #fff;
      }
      p {
        color: green;
        font-style: italic;
      }
      .header {
        padding: 10px;
        background: pink;
        border-radius: 10px;
      }
    </style>
  </head>
  <body>
    <h1 class="header">这是一个标题</h1>
    <p>Hello world!</p>
  </body>
</html>
```

CSS 由多组规则组成。每个规则由**选择器**（selector）、**属性**（property）和**值**（value）组成：

- 选择器（Selector）：多个选择器可以半角逗号（,）隔开。
- 属性（property）：CSS1、CSS2、CSS3 规定了许多的属性，目的在控制选择器的样式。
- 值（value）：指属性接受的设置值，多个关键字时大都以空格隔开。
- 属性和值之间用半角冒号（:）隔开，属性和值合称为特性。多个特性间用;隔开，最后用`{}`括起来。

## 二、选择器

选择器类型：

- 标签选择器
- 类选择器
- ID 选择器
- 属性选择器（如`input[type='submit']`）

## 三、样式表的引用

```html
<link rel="stylesheet" href="style.css" />
```

例如：

```html
<!DOCTYPE html>
<html>
  <head>
    <title>This is a title.</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <h1 class="header">这是一个标题</h1>
    <p>Hello world!</p>
  </body>
</html>
```
