" plug config

call plug#begin('D:\plugins')

Plug 'morhetz/gruvbox'   "主题

Plug 'preservim/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" indent line
Plug 'Yggdroot/indentLine'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gruvbox
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"color molokai
colorscheme gruvbox
"set background=dark    " Setting dark mode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline/vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let laststatus = 2
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_theme="molokai"
let g:airline_powerline_fonts = 1
"let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

"let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
"let g:airline#extensions#whitespace#mixed_indent_format =
" \ 'mixed-indent[%s]'
"let g:airline#extensions#whitespace#long_format = 'long[%s]'
"let g:airline#extensions#whitespace#mixed_indent_file_format =
" \ 'mix-indent-file[%s]'
"let g:airline#extensions#whitespace#conflicts_format = 'conflicts[%s]'

" vim airline 开启tabline
let g:airline#extensions#tabline#enabled = 1      "tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'      "tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1  



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline themes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='base16_gruvbox_dark_hard'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动打开
" autocmd VimEnter * NERDTree
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Index line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim
"let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#B2B2B2'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

