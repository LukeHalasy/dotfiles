set nocompatible
set number
syntax enable
set encoding=utf-8
set background=dark
set hlsearch
set expandtab

" Don't redraw while doing macros
set lazyredraw

" Ignore case while searching
set ignorecase

" tab stuff
set smarttab

" turn off swap files 
set noswapfile

set backupcopy=yes

" always show sign columns
set signcolumn=yes

" detect .h files to be c
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END

au BufRead,BufNewFile *.scss set filetype=scss.css

" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" ctags
autocmd BufWritePost *.c,*.h silent! !ctags . &

" ctags command ctrl - ] jump to definition ctlr - T jump back
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim

" Window Stuff
set splitbelow
set splitright

" Python Stuff
au BufNewFile,BufRead *.py set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent

" Java Stuff
au BufNewFile,BufRead *.java set tabstop=3 softtabstop=3 shiftwidth=3 expandtab smarttab autoindent

" arm stuff
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

let g:dracula_colorterm=1
set t_Co=256
if (has("termguicolors"))
  set termguicolors
endif
let g:dracula_italic=0
" colorscheme dracula

let g:tokyonight_style = "storm"
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" let g:tokyonight_style = "night"
" let g:tokyonight_italic_functions = 1
colorscheme tokyonight
