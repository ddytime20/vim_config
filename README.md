# vim_config
## __vimrc
在linux平台替换~/.vimrc
在windows平台替换~/_vimrc

__vimrc主要负责加载base.vim、keymap.vim和plug.vim。分别负责vim基本配置，键盘映射和插件管理

## base.vim
基本vim配置，主要包括字体，显示等配置

## keymap.vim
键盘映射，主要根据个人习惯修改，插件的快捷键不在该文件修改

## plug.vim
插件，需要提前安装vim-plug插件管理

## ctags
linux平台

windows平台
- 安装[ctags](http://ctags.sourceforge.net/index.html)，下载ctags58.zip，将ctags.exe复制到vim/vim82/中，否则报错
Taglist: Exuberant ctags (http://ctags.sf.net) not found in PATH. 

- 安装[taglist](http://www.vim.org/scripts/script.php?script_id=273)，下载文件解压会得到doc和plugin两个文件夹，复制到/vim/vimfile中

主要参考[gvim中taglist安装](https://blog.csdn.net/gavinr/article/details/6332341)

## cscope
linux平台

windows平台
