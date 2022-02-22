let g:fern#disable_default_mappings = 1

noremap <silent> <Leader>d :Fern . -drawer -width=30 -toggle<CR><C-w>=
noremap <silent> <Leader>f :Fern . -drawer -reveal=% -width=30<CR><C-w>=
noremap <silent> <Leader>. :Fern %:h -drawer -width=30<CR><C-w>=

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-my-open-and-close)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> l <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> h <Plug>(fern-action-collapse)
  nmap <buffer> q <Plug>(fern-action-leave)
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> u <Nop>
  nmap <buffer> <leader>n <Plug>(fern-action-new-path)
  " nnoremap <buffer> <leader>n n
  nmap <buffer> yn <Plug>(fern-action-yank:label)
  nmap <buffer> yf <Plug>(fern-action-yank:path)
  nmap <buffer> o <Plug>(fern-action-open)
  nmap <buffer> s <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)

  nmap <silent> <buffer> cm <Plug>(fern-action-clipboard-move)
  nmap <silent> <buffer> cp <Plug>(fern-action-clipboard-paste)
  nmap <silent> <buffer> cc <Plug>(fern-action-clipboard-copy)
  nmap <silent> <buffer> yy <Plug>(fern-action-clipboard-copy)
  nmap <silent> <buffer> cx <Plug>(fern-action-mark:clear)
  nmap <silent> <buffer> rn <Plug>(fern-action-rename)
  nmap <silent> <buffer> cw <Plug>(fern-action-rename:split)
  " nmap <buffer> h <Plug>(fern-action-hidden:toggle)
  nmap <silent> <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <silent> <buffer><nowait> > <Plug>(fern-action-enter)
  nmap <silent> <buffer><nowait> z <Plug>(fern-action-zoom)
  setlocal foldmethod=manual
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END
