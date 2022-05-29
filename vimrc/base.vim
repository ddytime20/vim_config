"   base vim config


" Startup {{{
filetype indent plugin on

" vim 文件折叠方式为 marker
augroup ft_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基本配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General {{{
" 设置输入法 gvim可能存在问题

"设置行号
set nu           
set relativenumber  " 相对行号
colorscheme desert     "设置配色方案

" 语法高亮
syntax on 
syntax enable
set showmatch        "设置匹配模式

" 设置自动缩进
set ai!            

"启用鼠标
set mouse=a        

" 关闭声音
set vb t_vb=

" 关闭闪屏
au GuiEnter * set t_vb=

"显示命令
set showcmd         
set clipboard+=unnamed

" 显示光标当前位置
set ruler

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7

" 设置 alt 键不映射到菜单栏
set winaltkeys=no
set backspace=indent,eol,start whichwrap+=<,>,[,]

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 默认不使用cscope
set nocscopeverbose

" }}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lang & Encoding {{{
" Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)        
set encoding=utf-8
set langmenu=zh_CN.UTF-8

" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" 设置字体 安装了pownline字体
if has("win32")
set guifont=courier_new:h14:cANSI
endif


" 编码格式  
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
"set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'

" 设置中文提示
if has("win32")
language messages zh_CN.UTF-8
endif

" }}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示格式配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format {{{
" 显示格式

" 显示换行 tab
"set linebreak
" 显示不可见字符
"set list
"set listchars=tab:\|\ ,trail:-
"set listchars=space:-

" 自动缩进
set expandtab
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
"insert 4 spaces for a tab"

" }}}

" 状态栏
set laststatus=2
"set statusline=[%F]%y%r%m%*%=[TYPE=%Y][Line:%l/%L,Column:%c][%p%%][%{strftime(\"%d/%m/%y\ -\ %H:%M\")}]
"set statusline=\ %F%m%r%h%w\ [TYPE=%Y]\ [%{&fileformat}]\ [%{&encoding}]%=[POS=%l/%L, %c]\ [%p%%]\ %{strftime(\"%Y-%m-%d\ %H:%M\")}\
"set statusline=%1*\%<%.50F\             "显示文件名和文件路径

" 取消文件备份
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
" 默认关闭折叠
set foldlevelstart=99
set foldmethod=indent
"za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠

" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


" 解决consle输出乱码
"set termencoding = cp936  

" 设置中文帮助
set helplang=cn

" buff
" 允许隐藏被修改过的 buffer
set hidden


if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif
