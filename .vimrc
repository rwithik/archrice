set autoindent
set showcmd
set tabstop=4
set relativenumber
set number
filetype plugin on
syntax on
filetype indent on

"General Keymaps
noremap <Space><Space> 0/<++><Enter>4xa
inoremap <Space><Space> <Esc>0/<++><Enter>4xa

inoremap jk <Esc>:w<Enter>
inoremap jj <Esc>

" Keymaps for C Files

autocmd FileType c inoremap ;p printf("<++>", );<++><Esc>0
autocmd FileType c inoremap ;for for(<++>; <++>; <++>)<++><Esc>0i

" Keymaps for Java files

autocmd filetype java inoremap ;sopln System.out.println(<++>);<++>



autocmd BufWritePost *.tex !~/Desktop/Scripts/compiler %
