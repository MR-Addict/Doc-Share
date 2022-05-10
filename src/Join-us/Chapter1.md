# 第一章——配置环境

在撰写文档时，你需要配置一下相关环境，以便你能在本地预览你写的内容，我默认你是使用的Windows系统，同时是使用vscode作为你的编辑器。

- 安装Git
- 安装Rust语言环境
- 配置mdbook环境
- 安装vscode的markdown预览插件

## 1. 安装Git

直接前往[Gitforwindows官网](https://gitforwindows.org/)下载安装Git即可。

安装完成后，你可以在命令行中输入`git`测试你的Git是否安装成功。

## 2. 安装Rust

因为mdbook是基于Rust语言的一个框架，因此使用mdbook前你需要安装Rust。你可以前往[Rust官网](https://www.rust-lang.org/tools/install)下载安装Rust，安装需要一定的时间，如果在安装过程中出现了什么错误可以自行百度或者Google，一般都能解决。

![Install-Rust](Images/1-1.png)

安装完成后，你可以在命令行中输入`rustc`或者`cargo`测试你的Rust是否安装成功。

## 3. 配置mdbook环境

你可以通过Rust直接安装mdbook：

```shell
cargo install mdbook
```

你也可以通过Github安装最新的版本：

```shell
cargo install --git https://github.com/rust-lang/mdBook.git mdbook
```

上面两者选择一个就可以了，如果在安装过程中出现了什么错误可以自行百度或者Google，一般都能解决。

如果实在解决不了，你还可以去[Github主页](https://github.com/rust-lang/mdBook/releases)下载已经编译好的文件，将这个编译好的文件放到你的环境变量里面就可以了。

![Github-mdbook](Images/1-2.png)

你可以在命令行中输入`mdbook`测试你的mdbook环境是否安装成功。

## 4. 安装vscode的markdown预览插件

在你的vscode中安装以下两个插件：

- Markdown All in One
- Markdown Preview Enhanced

![Plugin](Images/1-3.png)

安装完成后，用vscode打开一个markdown文档时，你可以通过点击右上角的预览图标预览你的markdown文本。

![Preview](Images/1-4.png)
