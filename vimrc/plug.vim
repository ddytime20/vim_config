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
let g:airline#extensions#tabline#enabled = 1

" nerdtree
autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
