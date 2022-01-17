" key map config

" Keymap {{{{{{
let mapleader=","

inoremap <Up> <Nop>
nnoremap <Up> <Nop>

inoremap <Down> <Nop>
nnoremap <Down> <Nop>

inoremap <Right> <Nop>
nnoremap <Right> <Nop>

inoremap <Left> <Nop>
nnoremap <Left> <Nop>

imap jk <Esc>

nnoremap H ^
nnoremap L $

" n noremap b
nnoremap n b

"nnoremap m i
"nnoremap k j
"nnoremap i k
"nnoremap j h

" tab
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>


" 插入模式移动光标 alt + 方向键
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>

" 命令模式下的行首尾
cnoremap <C-a> <home>
cnoremap <C-e> <end>

" 重新映射tab键
noremap <tab> <Esc> 
noremap <s-tab> <tab> 

" buff
" normal 模式下使用 bl 列出 Buffer 列表
nnoremap <silent> bl :ls<CR>

" normal 模式下使用 bo 打开一个新 Buffer
nnoremap <silent> bo :enew<CR>

" normal 模式下使用 bn 切换到下一个 Buffer
nnoremap <silent> bn :bnext<CR>

" normal 模式下使用 bn 切换到上一个 Buffer
nnoremap <silent> bp :bprevious<CR>

" normal 模式下使用 bd 关闭当前 Buffer
nnoremap <silent> bd :bdelete<CR>
