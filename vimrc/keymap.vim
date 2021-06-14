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
