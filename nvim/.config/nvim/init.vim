" First set up some basics
	"set nocompatible		" Set compatibilty to Vim only
	"filetype off			" Force plug-ins to load correctly
	syntax on			" Turn on syntax highlighting
	set number relativenumber	" Easier navigation
	set wrap			" Wrap text that extends beyond screen
	set splitbelow splitright	" Sets more sensical splitting
	set backspace=indent,eol,start	" Normal backspace function
	set showcmd			" Show partial command in status line
	set showmatch			" Show matching braces
	set ignorecase			" Case insesitive matching
	set mouse=a			" Enable mouse usage
	set encoding=utf-8		" Encoding	
	set smartcase			" Include only uppercase words with uppercase search terms
	set incsearch 			" Incremental search
	set laststatus=2
	set statusline+=%{wordcount().words}\ words
	set nohlsearch 			" Stop highlighting on search
	set updatetime=300
" Config
	filetype plugin on
	source ~/.config/nvim/ftplugin/plugins.vim
	source ~/.config/nvim/ftplugin/mappings.vim
	source ~/.config/nvim/ftplugin/skeletons.vim

" Popmenu
" source for dictionary, current or other loaded buffers, see ':help cpt'
	set cpt=.,k,w,b
" don't select the first item.
	set completeopt=menu,menuone,noselect
" suppress annoy messages.
	set shortmess+=c

" Turn off gutter highlighting
	highlight clear SignColumn

" Tell neovim which python executable to use
let g:python3_host_prog='/home/james/anaconda3/bin/python3'
