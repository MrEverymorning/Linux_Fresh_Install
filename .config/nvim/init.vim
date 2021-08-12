set path+=**
lua require("init")

let mapleader=" "
"remaps
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nnoremap <silent> <Leader>pv :NERDTreeFind<CR>
nnoremap<leader>pt :NERDTreeToggle<Enter>
nnoremap <F5> :UndotreeToggle<CR>
"Save and format
"nnoremap <C-s> ggVG=<C-o>:w<Enter>
nnoremap <C-s> :w<Enter>
nnoremap <leader>pv :Vex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>plug :PlugInstall<CR>

"map the m key in vim easyclip
nmap M <Plug>MoveMotionEndOfLinePlug

"Not really using right now
nmap <leader>pf :CtrlP<CR>
nnoremap <leader>gd :GoDef<Enter>
"Telescope usage
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
