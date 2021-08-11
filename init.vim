set exrc
:set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
"set undodir=~/.vim/undodir  #I need to set up this directory
set undofile
set incsearch
set scrolloff=20
set colorcolumn=80
set signcolumn=yes
" Give more space for displaying messages
set cmdheight=2
set clipboard=unnamedplus
"cursor settings
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

filetype plugin on

set completeopt=menuone,noselect

" Having longer updatetime (default is 4000 = 4s) leads to noticeable delays and
"poor user experience
set updatetime=50

" Don’t pass message to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
"This turns the sneak plugin into something similar to easymotion
let g:sneak#label = 1

call plug#begin()
"telescope plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"other plugins
Plug 'preservim/nerdtree'
Plug 'adelarsq/vim-matchit'
Plug 'gruvbox-community/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'
Plug 'Raimondi/delimitMate' "this plugin has autocomplete quotes
Plug 'mbbill/undotree' "Undotree
"Plug 'lukas-reineke/indent-blankline.nvim' "indent Guides
Plug 'svermeulen/vim-easyclip' "Fixes the clipboard functionality
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive' "For Git
Plug 'justinmk/vim-sneak'
Plug 'wakatime/vim-wakatime'
Plug 'turbio/bracey.vim'

"Other plugins to consider: treesitter, undotree, fugitive, neovimLsp, 
call plug#end()
nnoremap <leader>pv :Vex<CR>
colorscheme gruvbox
highlight Normal guibg=none
let mapleader=" "

"remaps
"mode lhs rhs
"n is normal mode
"nor is no recursive execution
"remap is self explanatory
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <leader>pf :CtrlP<CR>
nnoremap <leader>gd :GoDef<Enter>
nnoremap <silent> <Leader>pv :NERDTreeFind<CR>
nnoremap<leader>pt :NERDTreeToggle<Enter>
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <leader>t :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>


nnoremap <leader>ps w 
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <c-s> :w<Enter>
nnoremap <leader>pv :Vex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>plug :PlugInstall<CR>
"remap sneakvim to f
map f <Plug>Sneak_s
map F <Plug>Sneak_S
"map the m key in vim easyclip
nmap M <Plug>MoveMotionEndOfLinePlug



fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns $s/\s\+$//e
	call winrestview(l:save)
endfun

augroup The_Primeagen
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END
