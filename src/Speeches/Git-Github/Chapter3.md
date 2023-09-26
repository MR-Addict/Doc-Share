# Git的常用命令

## 1. git init

创建一个新的仓库。执行后可以看到，仅仅在项目目录**多出了一个.git目录**，关于版本等的所有信息都在这个目录里面。

## 2. git clone

克隆一个远程仓库。

```bash
git clone [url]  # https://github.com/
```

## 3. git add .

git add .命令可将所有文件添加到暂存区。

## 4. git commit

将暂存区的内容添加到**本地仓库中**。

```bash
git commit -m [message]
```

## 5. git push

git push 命用于从将本地的分支版本上传到远程并合并。

命令格式如下：

```bash
git push <远程主机名> <本地分支名>:<远程分支名>
```

#如果本地分支名与远程分支名相同，则可以省略冒号：

```bash
git push <远程主机名> <本地分支名>   #例如
git push origin main
```

## 6. git branch

创建一个分支，分支上的操作不会影响到主支:

```bash
git branch (branch name)
```

删除分支命令:

```bash
git branch -d (branch name)
```

## 7. git checkout

切换分支命令。

```bash
git checkout (branch name)
```

## 8. git merge

合并分支命令。

```bash
git merge (branch name)
```

## 9. git log

在使用 Git 提交了若干更新之后，又或者克隆了某个项目，想回顾下提交历史，我们可以使用 git log 命令查看。

## 10. git status

git status 命令用于查看在你上次提交之后是否有对文件进行再次修改。

## 11. git reset --hard

git reset 命令用于回退版本，可以指定退回某一次提交的版本。

git reset 命令语法格式如下：

```bash
git reset [--soft | --mixed | --hard] [HEAD]
#--mixed 为默认，可以不用带该参数，用于重置暂存区的文件与上一次的提交
#(commit)保持一致，工作区文件内容保持不变。
```
