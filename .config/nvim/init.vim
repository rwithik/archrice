let g:mapleader = ';'

set nocompatible
set showmatch
set ignorecase
set smartcase
set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set relativenumber

filetype plugin indent on
syntax on

" General Keymaps
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	noremap <leader><leader> <Esc>\<++><Enter>+_c4l
	inoremap jk <Esc>:w<Enter>
	inoremap jj <Esc>
	map <leader>s :setlocal spell! spelllang=en_us<CR>

	" Insert placeholder
	inoremap <leader>g <++>
	noremap <leader>g a<++><Esc>

" QoL changes
	cnoreabbrev W! w!
	cnoreabbrev	Q! q!
	cnoreabbrev	Wq wq
	cnoreabbrev	WQ wq
	cnoreabbrev	W w
	cnoreabbrev	Q q

" C++ files
	autocmd FileType cpp inoremap <leader>o cout << ;<Enter><++><Esc>0f;i
	autocmd FileType cpp inoremap <leader>i cin >> ;<Enter><++><Esc>0f;i
	autocmd FileType cpp inoremap <leader>v vector<> <++>;<Enter><++><Esc>0f>i
	autocmd FileType cpp inoremap <leader>fl for (; <++>; <++>){<Enter><++><Enter>}<Esc>2k0f(a
	autocmd FileType cpp inoremap <leader>vfl for (: <++>){<Enter><++><Enter>}<Esc>2k0f(a

" LaTeX
	autocmd FileType tex inoremap <leader><Enter> \newline<Enter>
	autocmd FileType tex inoremap <leader>i \includegraphics[width=\linewidth]{}\newline<Esc>T{i
	autocmd FileType tex inoremap <leader>em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap <leader>it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap <leader>bf \textbf{}<++><Esc>T{i
	autocmd filetype tex inoremap <leader>v \begin{verbatim}<++><Enter>\end{verbatim}<Enter><++><Esc>T{i
	autocmd filetype tex inoremap <leader>ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Enter>\item <++><Enter>\item <++><Esc>2kA
	autocmd filetype tex inoremap <leader>ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item <Enter>\item <++><Enter>\item <++><Esc>2kA
	autocmd filetype tex inoremap <leader>li \item<Space>
	autocmd filetype tex inoremap <leader>chap \chapter{}<Enter><Enter><++><Esc>2kf{a
	autocmd filetype tex inoremap <leader>sec \section{}<Enter><Enter><++><Esc>2kf{a
	autocmd filetype tex inoremap <leader>ssec \subsection{}<Enter><Enter><++><Esc>2kf{a
	autocmd filetype tex inoremap <leader>sssec \subsubsection{}<Enter><Enter><++><Esc>2kf{a

" Markdown
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

" Automation

