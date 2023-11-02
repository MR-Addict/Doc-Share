# Git 的安装与配置

## 1. Git 的安装

打开 git 官网下载 git 对应操作系统的版本。如果官网下载太慢，我们可以使用淘宝镜像下载：[链接](http://npm.taobao.org/mirrors/git-for-windows/)找到最新版本的 Git 点击下载。

## 2. Git 的配置

**设置用户名与邮箱**（用户标识，必要）

当你安装 Git 后首先要做的事情是设置你的用户名称和 e-mail 地址。这是非常重要的，因为每次 Git 提交都会使用该信息。它被永远的嵌入到了你的提交中：

```shell
git config --global user.name "*****"           #名称
git config --global user.email ******@***.com   #邮箱
```

可以使用命令查看是否设置完成

```shell
git config --global --list
```
