"   base vim config


" Startup {{{
filetype indent plugin on


" vim 文件折叠方式为 marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}


" General {{{
"set nu!            "设置行号
set relativenumber  " 相对行号
colorscheme desert     "设置配色方案
syntax on         "语法高亮
syntax enable
set showmatch        "设置匹配模式
set smartindent        "设置只能对齐
set ai!            "设置自动缩进
set fileencodings=utf-8,gbk
set ambiwidth=double    "设置中文支持
set guifont=Consolas:h13:cANSI "设置字体及大小
set mouse=a        "启用鼠标
set vb t_vb=       "关闭声音
set showcmd        "显示命令 
set clipboard+=unnamed
" 设置 alt 键不映射到菜单栏
set winaltkeys=no
set backspace=indent,eol,start whichwrap+=<,>,[,]
" }}}

" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}


" Format {{{
set autoindent
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
syntax on
" }}}

" 状态栏
set statusline=[%F]%y%r%m%*%=[TYPE=%Y][Line:%l/%L,Column:%c][%p%%][%{strftime(\"%d/%m/%y\ -\ %H:%M\")}]
set laststatus=2


" 文件备份
set noundofile
set nobackup
set noswapfile

" 代码折叠
"1. manual //手工定义折叠
"2. indent //用缩进表示折叠
"3. expr　 //用表达式来定义折叠
"4. syntax //用语法高亮来定义折叠
"5. diff   //对没有更改的文本进行折叠
"6. marker //用标志折叠
set foldmethod=indent
"za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠

