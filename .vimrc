set autoindent
set showcmd
"filetype off
set tabstop=4
set relativenumber
set number
filetype plugin on
syntax on
filetype indent on

"Keymaps for C Files

"autocmd FileType c inoremap ;p printf("", );<Esc>jjjji
"autocmd FileType c inoremap { {<Enter><C-I><Enter>}<Esc>k$1xi
"inoremap ;p printf("", );<Esc>jjji
"autocmd FileType c noremap <C-/> <Esc>0i//<Esc>$i

"General Keymaps
map <Space><Space> /<++><Enter>4xi
inoremap <Space><Space> <Esc>0/<++><Enter>4xi
imap jk <Esc>:w<Enter>
imap jj <Esc>

" Keymaps for C Files

autocmd FileType c inoremap ;p printf("<++>", );<++><Esc>0
autocmd FileType c inoremap ;for for(<++>; <++>; <++>)<++><Esc>0i
" autocmd FileType c inoremap { {<Enter><Enter>}<Esc>j<C-I>i

" Keymaps for Java files

autocmd filetype java inoremap ;sopln System.out.println(<++>);<++>
