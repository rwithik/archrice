let mapleader =";"

execute pathogen#infect()

set autoindent
set showcmd
set tabstop=4
set relativenumber
set number

filetype plugin on
syntax on
filetype indent on

" General Keymaps
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	noremap <leader><leader> <Esc>/<++><Enter>"_c4l
	inoremap jk <Esc>:w<Enter>
	inoremap jj <Esc>
	map <leader>s :setlocal spell! spelllang=en_us<CR>
	inoremap <leader>g <++>
	noremap <leader>g a<++><Esc>

" Keymaps for C Files

	autocmd FileType c inoremap <leader>p printf("<++>", );<++><Esc>0
	autocmd FileType c inoremap <leader>for for(<++>; <++>; <++>){<Enter><++><Enter>}<Esc>2k0i

" Keymaps for CPP files

	autocmd FileType cpp inoremap <leader>o cout << ;<Enter><++><Esc>kf;i
	autocmd FileType cpp inoremap <leader>i cin >> ;<Enter><++><Esc>kf;i
	autocmd FileType cpp inoremap <leader>v vector<> <++>;<Enter><++><Esc>kf>i
	autocmd FileType cpp inoremap <leader>fl for (; <++>; <++>){<Enter><++><Enter>}<Esc>2k0f(a
	autocmd FileType cpp inoremap <leader>vfl for (: <++>){<Enter><++><Enter>}<Esc>2k0f(a


" Keymaps for Java files

	autocmd filetype java inoremap <leader>sopln System.out.println(<++>);<++>
	autocmd FileType java inoremap <leader>for for(<++>; <++>; <++>){<Enter><++><Enter>}<Esc>2k0i

" Keymaps for LaTeX

	autocmd filetype tex inoremap <leader><Enter> \\newline<Enter>
	autocmd filetype tex inoremap <leader>i \includegraphics[width=\linewidth]{<++>}\newline<Esc>0
	autocmd filetype tex inoremap <leader>em \emph{}<++><Esc>T{i
	autocmd filetype tex inoremap <leader>it \textit{}<++><Esc>T{i
	autocmd filetype tex inoremap <leader>bf \textbf{}<++><Esc>T{i
	autocmd filetype tex inoremap <leader>v \begin{verbatim}<++><Enter>\end{verbatim}<Enter><++><Esc>T{i
	autocmd filetype tex inoremap <leader>ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Enter>\item <++><Enter>\item <++><Esc>2kA
	autocmd filetype tex inoremap <leader>ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item <Enter>\item <++><Enter>\item <++><Esc>2kA
	autocmd filetype tex inoremap <leader>li \item<Space>
	autocmd filetype tex inoremap <leader>chap \chapter{}<Enter><Enter><++><Esc>2kf{a
	autocmd filetype tex inoremap <leader>sec \section{}<Enter><Enter><++><Esc>2kf{a
	autocmd filetype tex inoremap <leader>ssec \subsection{}<Enter><Enter><++><Esc>2kf{a
	autocmd filetype tex inoremap <leader>sssec \subsubsection{}<Enter><Enter><++><Esc>2kf{a
	
	
" Keymaps for Markdown
	
	autocmd filetype markdown inoremap <leader>i ![<++>](<++>)<++><Esc>F[a
	autocmd filetype markdown inoremap <leader>l [<++>](<++>)<++><Esc>F[a
	autocmd filetype markdown inoremap <leader>cd ```<Enter>```<Enter><++><Esc>2kA
	autocmd filetype markdown inoremap <leader>b ****<++><Esc>F*hi
	autocmd filetype markdown inoremap <leader>e **<++><Esc>F*i
	autocmd filetype markdown inoremap <leader>m $$<++><Esc>F$i
	autocmd filetype markdown inoremap <leader>1 # <Enter><Enter><++><Esc>2kA
	autocmd filetype markdown inoremap <leader>2 ## <Enter><Enter><++><Esc>2kA
	autocmd filetype markdown inoremap <leader>3 ### <Enter><Enter><++><Esc>2kA
	autocmd filetype markdown inoremap <leader>4 #### <Enter><Enter><++><Esc>2kA
	autocmd filetype markdown inoremap <leader>5 ##### <Enter><Enter><++><Esc>2kA
	autocmd filetype markdown inoremap <leader>6 ###### <Enter><Enter><++><Esc>2kA
	
" Compiling and other automating stuff
	
	autocmd filetype markdown noremap <leader>c :w! \| !mdc <c-r>%<CR><CR>
	" Leaving this commented as the map for code blocks is <leader>cd, and using this feels annoying
	" autocmd filetype markdown inoremap <leader>c <Esc>:w! \| !mdc <c-r>%<CR><CR>a
	autocmd filetype tex noremap <leader>c :w! \| !latexc <c-r>%<CR><CR>
	autocmd filetype tex inoremap <leader>c <Esc>:w! \| !latexc <c-r>%<CR><CR>a
	autocmd BufWritePost folders !~/Desktop/Scripts/shortcuts

" Surrounding Mappings
	" Only works for selections on a single line.

	vnoremap <leader>( xa()<Esc>P
	vnoremap <leader>{ xa{}<Esc>P
	vnoremap <leader>[ xa[]<Esc>P
	autocmd filetype markdown vnoremap <leader>b xa****<Esc>hP
	autocmd filetype markdown vnoremap <leader>e xa**<Esc>P
	autocmd filetype markdown vnoremap <leader>m xa$$<Esc>P

" vim-markdown settings
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

" Remove this whenever

inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
