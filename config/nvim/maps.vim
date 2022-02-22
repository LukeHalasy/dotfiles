" Description: Keymaps
imap jj <Esc>
"
" reload vim
nnoremap <leader>sr :source $MYVIMRC<CR> 
"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
nmap <leader>ss :split<Return><C-w>w
nmap <leader>sv :vsplit<Return><C-w>w
"
" Move window
nmap <Space> <C-w>w
nnoremap <silent> <C-h> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>
nnoremap <silent> <C-j> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>
nnoremap <silent> <C-k> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>
nnoremap <silent> <C-l> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>

" Resize window
nmap <C-w><h> <C-w><
nmap <C-w><l> <C-w>>
nmap <C-w><k> <C-w>+
nmap <C-w><j> <C-w>-
