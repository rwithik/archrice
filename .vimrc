set autoindent
set showcmd
"filetype off
set tabstop=4
set relativenumber
"set background=light
set number
"colorscheme peachpuff
filetype plugin on
syntax on
filetype indent on

"LaTex Bindings
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

"Keymaps for C Files

"autocmd FileType c inoremap ;p printf("", );<Esc>jjjji
"autocmd FileType c inoremap { {<Enter><C-I><Enter>}<Esc>k$1xi
"inoremap ;p printf("", );<Esc>jjji
"autocmd FileType c noremap <C-/> <Esc>0i//<Esc>$i

"General Keymaps
"map <Space><Space> /<++><Enter>4x:noh<Enter>i
"inoremap <Space><Space> <Esc>/<++><Enter>4x:noh<Enter>i

" Keymaps for C Files

autocmd FileType c inoremap ;p printf("<++>", );<Esc>0
autocmd FileType c inoremap ;for for(<++>; <++>; <++>)<Esc>0i
" autocmd FileType c inoremap { {<Enter><Enter>}<Esc>j<C-I>i
