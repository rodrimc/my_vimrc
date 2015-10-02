set number
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80
"set cursorline cursorcolumn
set cursorline
set foldnestmax=1

"Folding customization
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml<Plug>PeepOpenerl normal zM
nnoremap <silent> a @=(foldlevel('.')?'za':"a")<CR>

"Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"NERDTree
let g:NERDTreeWinPos= "left"
"au VimEnter *  NERDTree
set autochdir
let NERDTreeChDirMode=2

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"IdentGuides
map <Leader>s :IndentGuidesToggle <cr>

"YCM
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_auto_trigger=0
