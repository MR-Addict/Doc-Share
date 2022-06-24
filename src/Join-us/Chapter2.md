# 第二章——文档撰写规范

为了保证本文档前后内容的一致性，风格的一致性，框架内容的一致性，请一定要仔细阅读下面的内容，严格按照相关要求撰写，可以适当地作灵活变通。

## 1. 专题项目的创建及文件的命名

新内容请在src文件夹下新建一个你的专题的文件夹，请注意所有的文件必须`以英文命名`，单词之间不要用`空格`取而代之用`-`连接，每个专题的最小专题按照如下格式创建文件：

- Awesome-Project
  - Intro.md
  - Chapter1.md
  - Chapter2.md
  - Images
    - 0-1.png
    - 0-2.png
    - 1-1.png
    - 1-2.png
    - 2-1.png
    - 2-2.png

也就是说每个专题需要一个`Intro.md`以介绍该章节的内容，然后有多少章节就有几个`ChapterX.md`。

另外每个专题的最小专题有该专题的图片文件夹，图片的命名以专题及专题的次序命名，比如0-1.png表示介绍章节的第一张照片，1-1.png表示第一章的第一张照片，你可以使用其他格式的图片，但是建议使用`png格式`的图片。

如果你的项目包含很多的小项目，请参照以下格式创建文件：

- Awesome-Projects
  - Intro.md
  - Awesome-Project1
    - Intro.md
    - Chapter1.md
    - Chapter2.md
    - Images
      - 0-1.png
      - 0-2.png
      - 1-1.png
      - 1-2.png
      - 2-1.png
      - 2-2.png
  - Awesome-Project2
    - Intro.md
    - Chapter1.md
    - Chapter2.md
    - Images
      - 0-1.png
      - 0-2.png
      - 1-1.png
      - 1-2.png
      - 2-1.png
      - 2-2.png

## 2. markdown规范

虽然你可能已经了解了markdown的基本语法，但是这里还是要提醒一下撰写的规范要求。

### 2.1 标题规范

章节标题使用一个#，主标题使用两个##，次级标题使用三个###，以此类推，每个标题前除章节标题外不标序号，其他的都要标序号，主标题序号后`加.`，其他次级标题`不加.`，序号和标题之间要`有一个空格`。

```markdown
# 章节标题
## 1. 主标题1
## 2. 主标题2
## 3. 主标题3
### 3.1 次级标题1
### 3.2 次级标题2
### 3.3 次级标题3
```

### 2.2 段落规范

所有的`段落之间都要换行`，`不同的元素之间也要换行`，比如标题和段落之间要换行，段落和图片之间要换行，段落和列表之间要换行。

```markdown
### 2.2 安装Rust

因为mdbook是基于Rust语言的一个框架，因此使用mdbook前你需要安装Rust。你可以前往[Rust官网](https://www.rust-lang.org/tools/install)下载安装Rust，安装需要一定的时间，如果在安装过程中出现了什么错误可以自行百度或者Google，一般都能解决。

![Install-Rust](Images/1-1.png)

安装完成后，你可以在命令行中输入`rustc`或者`cargo`测试你的Rust是否安装成功。
```

## 3. SUMMARY规范

如果你想要把你的内容添加到你的book中，你还需要把相关章节添加到位于`src目录下的SUMMARY.md`的文件当中，添加方式和markdown的列表相同。列表元素的命名请使用中文，统一使用`第X章——章节描述`的方式添加。

```markdown
- [参与完善本文档](Join-us/Intro.md)
  - [第一章——如何撰写文档](Join-us/Chapter1.md)
  - [第二章——如何发布文档](Join-us/Chapter2.md)
  - [第三章——其他细节要求](Join-us/Chapter3.md)
```
