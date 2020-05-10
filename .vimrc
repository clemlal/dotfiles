" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" ---------------------------------------------------------------------------
"                             PACKAGES
" ---------------------------------------------------------------------------


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Manage different rules for different languages, change settings in
" ~/.editorconfig
Plugin 'editorconfig/editorconfig-vim'

" Nice bar at the bottom
Plugin 'itchyny/lightline.vim'
set laststatus=2

" File loader
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
"mapped to the ; key
map ; :Files<CR>

" File tree
Plugin 'scrooloose/nerdtree'
"CTRL O key to open
map <C-o> :NERDTreeToggle<CR>
"Auto open when opening a folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"Show hidden files
let NERDTreeShowHidden=1

"Rainbow colors for matching parents
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" --------------------------------------------------------------------------
"                              Basic Stuff
" --------------------------------------------------------------------------

" Show (partial) command in status line.
set showcmd

"Display matching brackets
set showmatch

"Enable mouse usage
set mouse=a

"Display the line number
set number

"Add a mark at column 80
set colorcolumn=80
highlight colorcolumn ctermbg=0

"share clipboard
set clipboard+=unnamedplus

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

"Switching between editors
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

set bg=dark

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e
