set nocompatible              " be iMproved, required
se nocp
se rtp+=/path/to/vim-apl/

filet plugin indent on

filetype off                  " required

" set the runtime path to include Vundle and initialize
"
 set rtp+=~/.vim/bundle/Vundle.vim

 call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins

"call vundle#begin('~/some/path/here')



" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'



" The following are examples of different formats supported.

" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
set conceallevel=2
autocmd Syntax Lisp syn keyword Operator lambda conceal ccar=λ

Plugin 'tpope/vim-fugitive'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ngn/vim-apl'
Plugin 'jpalardy/vim-slime'
Plugin 'easymotion/vim-easymotion'

" plugin from http://vim-scripts.org/vim/scripts.html

" Plugin 'L9'

" Git plugin not hosted on GitHub

Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'git://gitlab.com/n9n/vim-apl'

" git repos on your local machine (i.e. when working on your own plugin)


" The sparkup vim script is in a subdirectory of this repo called vim.

" Pass the path to set the runtimepath properly.

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a

" different version somewhere else.

" Plugin 'ascenator/L9', {'name': 'newL9'}



" All of your Plugins must be added before the following line

call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:

"filetype plugin on

"

" Brief help

" :PluginList       - lists configured plugins

" :PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate

" :PluginSearch foo - searches for foo; append `!` to refresh local cache

" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal

"

" see :h vundle for more details or wiki for FAQ

" Put your non-Plugin stuff after this line"
"
"
"
"""NERDTREE
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
 let g:NERDTreeChDirMode = 1
 map <F8> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"""NERDTREE

syntax on
colorscheme onedark



set tabstop=2
set shiftwidth=2
set nowrap
set number

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-W><C-H> :vsp<CR>
nnoremap <C-W><C-J> :sp<CR>

map ; :

au! BufNewFile,BufRead *.svelte set ft=html



let g:slime_target = "tmux"
