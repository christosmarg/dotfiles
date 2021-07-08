syntax on
set number!
set tabstop=8 shiftwidth=8 noexpandtab
set softtabstop=8
set noautoindent
set guicursor=n-v-c-i:block-Cursor
set termguicolors
set background=dark
set t_Co=256
"hi! Normal ctermbg=NONE guibg=NONE
colorscheme christos

nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
noremap <Space><Space> <Esc>/<++><CR><Esc>ca>

"HTML
autocmd FileType html noremap ;h1 i<h1></h1><Enter><Enter><++><Esc>2ka
autocmd FileType html noremap ;h2 i<h2></h2><Enter><Enter><++><Esc>2ka
autocmd FileType html noremap ;h3 i<h3></h3><Enter><Enter><++><Esc>2ka
autocmd FileType html noremap ;i i<i></i><Space><++><Esc>4ba
autocmd FileType html noremap ;b i<b></b><Space><++><Esc>4ba
autocmd FileType html noremap ;a i<a href=""><++></a><Space><++><Esc>4bla
autocmd FileType html noremap ;ul i<ul><Enter></ul><Enter><Enter><++><Esc>2kO
autocmd FileType html noremap ;li i<li></li><Enter><++><Esc>ka
autocmd FileType html noremap ;pp i<p></p><Enter><Enter><++><Esc>2kha
autocmd FileType html noremap ;pc i<pre><Enter><Enter></pre><Enter><Enter><++><Esc>3k0

"Tex
autocmd FileType *tex noremap ;i i\textit{}<Space><++><Esc>2ba
autocmd FileType *tex noremap ;b i\textbf{}<Space><++><Esc>2ba
autocmd FileType *tex noremap ;s i\section{}<Enter><Enter><++><Esc>2k$i
autocmd FileType *tex noremap ;ss i\subsection{}<Enter><Enter><++><Esc>2k$i
autocmd FileType *tex noremap ;sss i\subsubsection{}<Enter><Enter><++><Esc>2k$i
autocmd FileType *tex noremap ;c i\begin{center}<Enter><Enter>\end{center}<Enter><Enter><++><Esc>3ki
autocmd FileType *tex noremap ;t i\begin{tabular}{}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4k$i
autocmd FileType *tex noremap ;f i\begin{figure}[]<Enter><Enter>\end{figure}<Enter><Enter><++><Esc>4k$i
autocmd FileType *tex noremap ;wf i\begin{wrapfigure}[]<Enter><++><Enter>\end{wrapfigure}<Enter><Enter><++><Esc>4k$i
autocmd FileType *tex noremap ;ig i\includegraphics[]{<++>}<Space><++><Esc>2ba
autocmd FileType *tex noremap ;up i\usepackage{}<Enter><++><Esc>k$i

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ap/vim-css-color'
call vundle#end()            " required
filetype plugin indent on    " required
