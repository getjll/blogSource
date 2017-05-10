---
title: iterm2 + zsh + oh my zsh 终端
date: 2017-05-10 13:11:42
tags: 杂
---

系统默认的终端，在使用上有不少不如意的地方。比如命令复制、命令重复输入。
这顿google + baidu 之后决定使用：

  + [iterm2](http://www.iterm2.com/)
  + zsh
  + [oh my zsh](http://ohmyz.sh/)

打造自己终端。

一、下载 [iterm2](http://www.iterm2.com/downloads.html)

这里推荐是用 brew 安装

```bash
$ brew cask install iterm2
```

二、安装[oh my zsh](http://ohmyz.sh/)

官网推荐安装
```bash
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

三、切换bash为zsh

mac系统默认使用的为bash、可以使用下面命令查看当前系统使用的命令行

```bash
$ echo $SHELL
```

##### 切换为zsh

```bash
$ chsh -s /bin/zsh
```
在切换为zsh之前，本地通过 nvm 安装了 node。切换之后，命令行会失效。

四、迁移原有命令行指令

```zsh
$ open ~/.bash_profile
$ open ~/.zshrc
```

将需要使用的命令从 bash_profile 复制到 zshrc，变保存。
