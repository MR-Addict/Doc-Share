# 第三章——编译发布文档

## 1. 编译文档

在发布文档前，你需要先在本地预览你写的文档，预览时需要编译你的项目。

以下是mdbook的几个重要命令。

```shell
mdbook build
```

该命令用于编译你的book，前提是你的当前路径就是你的book的根目录。

```shell
mdbook build -o
```

该命令在编译完你的book后会通过默认浏览器打开预览。

```shell
mdbook watch
```

该命令可以监听你的文件，当有任何文件改动时，mdbook会自动编译项目，不需要你手动编译。

```shell
mdbook watch -o
```

该命令在监听后会通过默认浏览器打开预览。

## 2. 发布文档

建议在撰写文档的时候在另一个本地的分支撰写，撰写结束后再merge到main分支。然后直接push到云端就可以了。

```
git checkout main
git merge your-local-branch
git push origin main
```

当你把你的提交push到云端的时候，CI会自动识别这个动作，然后在一台云服务器上进行编译部署等操作，这些都是自动完成的，一般经过一分钟左右就部署完成了，然后你就可以通过[https://book.jinhun.moe](https://book.jinhun.moe)这个网址进行访问本文档了。相关内容也会自动更新。
