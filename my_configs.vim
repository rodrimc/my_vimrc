set number
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80
"set cursorline cursorcolumn
"set cursorline
set foldnestmax=1
colors vendetta
set term=xterm
" Replace text in selection
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Folding customization
set foldmethod=syntax
set nofoldenable
set foldlevel=2
nnoremap <silent> a @=(foldlevel('.')?'za':"a")<CR>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za

"Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"NERDTree
" au VimEnter *  NERDTree
set autochdir
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.o$', '\~$']
let g:NERDTreeWinPos= "left"

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_ceu_checkers=['']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"IndentGuides
map <Leader>s :IndentGuidesToggle <cr>

" YCM
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_auto_trigger=0
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']

" Fugitive
set diffopt+=vertical

" CTags
set tags=tags;/

" TagList
nnoremap <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

" snipmate
imap <tab> <esc>a<Plug>snipMateNextOrTrigger
smap <tab> <Plug>snipMateNextOrTrigger
