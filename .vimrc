
if has('gui_macvim')

  set expandtab
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set autoindent
  set smartindent

  "---------------------------
  " Start Neobundle Settings.
  "---------------------------
  " bundleで管理するディレクトリを指定
  set runtimepath+=~/.vim/bundle/neobundle.vim/

  " Required:
  call neobundle#begin(expand('~/.vim/bundle/'))

  " neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'


  "---------------------------------
  " vimproc
  "---------------------------------
  NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak'
  \   , 'cygwin'  : 'make -f make_cygwin.mak'
  \   , 'mac'     : 'make -f make_mac.mak'
  \   , 'unix'    : 'make -f make_unix.mak'
  \    }
  \ }

  "---------------------------------
  " neocomplete 
  "---------------------------------

  if has('lua')
    NeoBundleLazy 'Shougo/neocomplete.vim', {
          \ 'depends' : 'Shougo/vimproc',
          \ 'autoload' : { 'insert' : 1,}
          \ }
  endif

  " neocomplete {{{
  let g:neocomplete#enable_at_startup               = 1
  let g:neocomplete#auto_completion_start_length    = 3
  let g:neocomplete#enable_ignore_case              = 1
  let g:neocomplete#enable_smart_case               = 1
  let g:neocomplete#enable_camel_case               = 1
  let g:neocomplete#use_vimproc                     = 1
  let g:neocomplete#sources#buffer#cache_limit_size = 1000000
  let g:neocomplete#sources#tags#cache_limit_size   = 30000000
  let g:neocomplete#enable_fuzzy_completion         = 1
  let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
  " }}}



  "---------------------------------
  " processing 
  "---------------------------------
  NeoBundle 'sophacles/vim-processing'

  "---------------------------------
  " Arduino 
  "---------------------------------
  NeoBundle 'sudar/vim-arduino-syntax'


  call neobundle#end()

  " Required:
  filetype plugin indent on

  " 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
  " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
  NeoBundleCheck

  "-------------------------
  " End Neobundle Settings.
  "-------------------------
endif
