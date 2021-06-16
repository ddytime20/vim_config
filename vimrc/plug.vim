" plug config

call plug#begin('D:\0_pluggins')

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

call plug#end()

" gruvbox
colorscheme gruvbox
set background=dark    " Setting dark mode

" vim-airline/vim-airline
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let laststatus = 2
let g:airline_theme="dark"      " 设置主题
let g:airline_powerline_fonts = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
let g:airline#extensions#whitespace#mixed_indent_format =
 \ 'mixed-indent[%s]'
let g:airline#extensions#whitespace#long_format = 'long[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format =
 \ 'mix-indent-file[%s]'
let g:airline#extensions#whitespace#conflicts_format = 'conflicts[%s]'

" 开启tabline
let g:airline#extensions#tabline#enabled = 1      "tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'      "tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1  

" nerdtree
autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
