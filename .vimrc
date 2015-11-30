
if has('gui_macvim')

	set runtimepath+=~/.vim/vundle/
	call vundle#rc()

	"Bundle List---------------
	Bundle 'neocomplcache'
	Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
	Bundle 'Processing'
	"End-----------------------

	"Indent, Tab, TabSize Setting
	set cindent

	set expandtab
	set tabstop=2
	set shiftwidth=2

	"Line Number
	set number
	
	"command mode IM disable
	set imdisable

	"neocomplcache-----------------------------------------------------------
	let g:neocomplcache_enable_at_startup=1
	let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'

	" Disable AutoComplPop.
	"let g:acp_enableAtStartup = 0
	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 1
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
	" Use camel case completion.
	let g:neocomplcache_enable_camel_case_completion = 1
	" Use underbar completion.
	let g:neocomplcache_enable_underbar_completion = 1
	" Set minimum syntax keyword length.
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

	" Define dictionary.
	let g:neocomplcache_dictionary_filetype_lists = {
	    \ 'default' : '',
	    \ 'vimshell' : $HOME.'/.vimshell_hist',
	    \ 'scheme' : $HOME.'/.gosh_completions'
	        \ }
	
	" Define keyword.
	if !exists('g:neocomplcache_keyword_patterns')
	    let g:neocomplcache_keyword_patterns = {}
	endif
	let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
	
	" Plugin key-mappings.
	imap <C-k>     <Plug>(neocomplcache_snippets_expand)
	smap <C-k>     <Plug>(neocomplcache_snippets_expand)
	inoremap <expr><C-g>     neocomplcache#undo_completion()
	inoremap <expr><C-l>     neocomplcache#complete_common_string()
	
	" SuperTab like snippets behavior.
	"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
	
	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()
	
	" For cursor moving in insert mode(Not recommended)
	inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
	inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
	inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
	inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
	
	" AutoComplPop like behavior.
	"let g:neocomplcache_enable_auto_select = 1
	
	" Shell like behavior(not recommended).
	"set completeopt+=longest
	"let g:neocomplcache_enable_auto_select = 1
	"let g:neocomplcache_disable_auto_complete = 1
	"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
	"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
	
	" Enable omni completion.
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	
	" Enable heavy omni completion.
	if !exists('g:neocomplcache_omni_patterns')
	  let g:neocomplcache_omni_patterns = {}
	endif
	let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
	"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
	let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
	let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
	
	" For snippet_complete marker.
	if has('conceal')
	  set conceallevel=2 concealcursor=i
	endif
	"end-------------------------------------------------------------------------
	
	"vimlatex--------------------------------------------------------
	" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
	filetype plugin on

	" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
	" can be called correctly.
	set shellslash

	" IMPORTANT: grep will sometimes skip displaying the file name if you
	" search in a singe file. This will confuse latex-suite. Set your grep
	" program to alway generate a file-name.
	set grepprg=grep\ -nH\ $*

	" OPTIONAL: This enables automatic indentation as you type.
	filetype indent on

	let g:Tex_DefaultTargetFormat = 'pdf'
	let g:Tex_CompileRule_dvi = 'uplatex $*.latex' "dviにuplatexを使ってコンパイル
	let g:Tex_FormatDependency_pdf = 'dvi,pdf'
	let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
	"let g:Tex_DefaultTargetFormat = 'pdf' "標準で.pdfにコンパイルして開いてね

  let g:Tex_ViewRule_pdf = 'open -a Preview.app' "PDFはPreview.appで開いてね

  "let g:Tex_CompileRule_pdf = 'pdflatex $*.tex' "pdflatexを使って.texから.pdfに変換してね
	"end------------------------------------------------------------
	
endif
