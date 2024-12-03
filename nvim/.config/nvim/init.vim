syntax on
set number!
set mouse=a
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

map <leader>c :w! \| !doccomp %<CR>
map <leader>p :!docprev %<CR><CR>

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
Plugin 'markjdb/nvim-cscope'
Plugin 'vimwiki/vimwiki'
call vundle#end()            " required
filetype plugin indent on    " required

let g:vimwiki_list = [{'path': '~/n/vimwiki/', 'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_markdown_link_ext = 1

"""""""""""""""""""""""""" cscope stuff

"set cscopetag
" Suppress an error if .vimrc is sourced after the DB is added.
"set nocscopeverbose
"if $CSCOPE_DB != ""
"    cs add $CSCOPE_DB
"endif
"set cscopeverbose

nnoremap <leader>cnew :Cscope add<CR>
nnoremap <leader>creg :Cscope regen<CR>
nnoremap <leader>csel :Cscope select<CR>

command -nargs=1 Ca Cscope find a <args>
nnoremap <C-\>a :Cscope find a <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>la :Cscope find a <C-R>=tolower(expand("<cword>"))<CR><CR>
nnoremap <C-\>ua :Cscope find a <C-R>=toupper(expand("<cword>"))<CR><CR>
"nnoremap <C-@>a :scs find a <C-R>=expand("<cword>")<CR><CR>
"nnoremap <C-@><C-@>a :vert scs find a <C-R>=expand("<cword>")<CR><CR>

command -nargs=1 Cc Cscope find c <args>
nnoremap <C-\>c :Cscope find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>lc :Cscope find c <C-R>=tolower(expand("<cword>"))<CR><CR>
nnoremap <C-\>uc :Cscope find c <C-R>=toupper(expand("<cword>"))<CR><CR>
"nnoremap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
"nnoremap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>

command -nargs=1 Cd Cscope find d <args>
nnoremap <C-\>d :Cscope find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>ld :Cscope find d <C-R>=tolower(expand("<cword>"))<CR><CR>
nnoremap <C-\>ud :Cscope find d <C-R>=toupper(expand("<cword>"))<CR><CR>
"nnoremap <C-@>d :Cscope find d <C-R>=expand("<cword>")<CR><CR>
"nnoremap <C-@><C-@>d :vert cs find d <C-R>=expand("<cword>")<CR><CR>

command -nargs=1 Ce Cscope find e <args>
nnoremap <C-\>e :Cscope find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>le :Cscope find e <C-R>=tolower(expand("<cword>"))<CR><CR>
nnoremap <C-\>ue :Cscope find e <C-R>=toupper(expand("<cword>"))<CR><CR>
"nnoremap <C-@>e :Cscope find e <C-R>=expand("<cword>")<CR><CR>
"nnoremap <C-@><C-@>e :vert cs find e <C-R>=expand("<cword>")<CR><CR>

command -nargs=1 Cf Cscope find f <args>
nnoremap <C-\>f :Cscope find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>lf :Cscope find f <C-R>=tolower(expand("<cfile>"))<CR><CR>
nnoremap <C-\>uf :Cscope find f <C-R>=toupper(expand("<cfile>"))<CR><CR>
"nnoremap <C-@>f :Cscope find f <C-R>=expand("<cfile>")<CR><CR>
"nnoremap <C-@><C-@>f :vert cs find f <C-R>=expand("<cfile>")<CR><CR>

command -nargs=1 Cg Cscope find g <args>
nnoremap <C-\>g :Cscope find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>lg :Cscope find g <C-R>=tolower(expand("<cword>"))<CR><CR>
nnoremap <C-\>ug :Cscope find g <C-R>=toupper(expand("<cword>"))<CR><CR>
"nnoremap <C-@>g :Cscope find g <C-R>=expand("<cword>")<CR><CR>
"nnoremap <C-@><C-@>g :vert cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-]> :Cscope find g <C-R>=expand("<cword>")<CR><CR>

command -nargs=1 Cs Cscope find s <args>
nnoremap <C-\>s :Cscope find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>ls :Cscope find s <C-R>=tolower(expand("<cword>"))<CR><CR>
nnoremap <C-\>us :Cscope find s <C-R>=toupper(expand("<cword>"))<CR><CR>
"nnoremap <C-@>s :Cscope find s <C-R>=expand("<cword>")<CR><CR>
"nnoremap <C-@><C-@>s :vert cs find s <C-R>=expand("<cword>")<CR><CR>

" Reset the cscope connection.
nnoremap <leader>cr :Cscope reset<CR>
