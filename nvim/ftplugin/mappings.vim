" Shortcut the split navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Autocomplete braces in Python
	autocmd FileType python inoremap ( ()<Esc>i
	autocmd FileType python inoremap { {}<Esc>i
	autocmd FileType python inoremap [ []<Esc>i

	autocmd FileType tex inoremap ( ()<Esc>i
	autocmd FileType tex inoremap { {}<Esc>i
	autocmd FileType tex inoremap [ []<Esc>i

	autocmd FileType python inoremap " ""<Esc>i
	autocmd FileType python inoremap ' ''<Esc>i

" Jump out of autocomplete braces using shift+tab
	autocmd FileType python,tex inoremap <S-l> <Esc>la

" Tag bar
	map <leader>t :TagbarToggle<CR>

" Autocompile latex  
 	map <C-c> :LLPStartPreview <CR>

" NerdTree
	nnoremap <leader>n :NERDTreeFocus<CR>"
	nnoremap <C-n> :NERDTree<CR>

" Kill NerdTree if last buffer is closed
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Load automatically and put cursor in new window
	autocmd VimEnter * NERDTree | wincmd p
