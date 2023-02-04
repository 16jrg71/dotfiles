" Plugins 
call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/vim-scripts/indentpython.vim.git'
Plug 'https://github.com/xuhdev/vim-latex-live-preview.git'
Plug 'https://github.com/dkarter/bullets.vim.git'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'skywind3000/vim-auto-popmenu'
Plug 'vim-scripts/pythoncomplete'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" pythoncomplete all 
	set omnifunc=syntaxcomplete#Complete "Autocomplete all 

" Set latex-live-preview plugin pdf viewer
	let g:livepreview_previewer = 'zathura'

" Allow multiple compile formats
	let g:Tex_DefaultTargetFormat='pdf'
	let g:Tex_MultipleCompileFormats='pdf,bib,pdf'

" Stop auto bullet point on files with no filetype
	let g:bullets_enable_in_empty_buffers = 0 " default = 1

" Bullets.vim - select which file types this plugin works on
	let g:bullets_enabled_file_types = [
    	\ 'markdown',
    	\ 'text',
    	\ 'gitcommit',
    	\ 'scratch'
    	\]

" Enable popmenu this plugin for filetypes, '*' for all files.
	let g:apc_enable_ft = {'text':1, 'markdown':1, 'php':1, 'python':1}

"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif

"nnoremap <silent> K :call <SID>show_documentation()<CR>

"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  elseif (coc#rpc#ready())
"    call CocActionAsync('doHover')
"  else
"    execute '!' . &keywordprg . " " . expand('<cword>')
"  endif
"endfunction

" COC rename imports across all files
"nmap <leader>rn <Plug>(coc-rename)

" Remap <C-j> and <C-k> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
endif
