" key map config

" base
let mapleader="["

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭方向键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"inoremap <Up> <Nop>
"nnoremap <Up> <Nop>

"inoremap <Down> <Nop>
"nnoremap <Down> <Nop>

"inoremap <Right> <Nop>
"nnoremap <Right> <Nop>

"inoremap <Left> <Nop>
"nnoremap <Left> <Nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 默认tab 等于 <C-i>,无法直接将tab键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"unmap <C-i>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 写入和退出
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基本映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap jk <Esc>
nnoremap <C-[> <Esc>

nnoremap H ^
nnoremap L $

" n normap b
" nnoremap m b

"nnoremap m i
"nnoremap k j
"nnoremap i k
"nnoremap j h

" tab
"nnoremap <C-l> gt
"nnoremap <C-h> gT
"nnoremap <leader>t : tabe<CR>


" 插入模式移动光标 alt + 方向键
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>

" 命令模式下的行首尾
cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <tab> <Esc> 

" 重新映射tab键
"noremap <tab> <Esc> 
"noremap <s-tab> <tab> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buff映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normal 模式下使用 bl 列出 Buffer 列表
"nnoremap <silent> <tab>l :ls<CR>
nnoremap <leader>l :ls<CR>

" normal 模式下使用 bo 打开一个新 Buffer
"nnoremap <silent> <tab>o :enew<CR>
nnoremap <leader>o :enew<CR>

" normal 模式下使用 bn 切换到下一个 Buffer
"nnoremap <silent> <tab>n :bnext<CR>
nnoremap <leader>n :bnext<CR>

" normal 模式下使用 bn 切换到上一个 Buffer
"nnoremap <silent> <tab>p :bprevious<CR>
nnoremap <leader>p :bprevious<CR>

" normal 模式下使用 bd 关闭当前 Buffer
"nnoremap <silent> <tab>d :bdelete<CR>
nnoremap <leader>d :bdelete<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动补全
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap ( ()<ESC>i
" inoremap { {}<ESC>i
" inoremap [ []<ESC>i
" inoremap < <><ESC>i
" inoremap ' ''<ESC>i
" inoremap " ""<ESC>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 分屏窗口移动,原来ctrl+w指令后再窗口移动，改一下映射，ctrl + 方向直接移动屏幕
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctaglist
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow = 1

