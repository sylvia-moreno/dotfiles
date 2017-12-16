" Plugins
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
call dein#begin(expand('~/.vim/dein')) " plugins root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
\ 'build': {
\     'windows': 'tools\\update-dll-mingw',
\     'cygwin': 'make -f make_cygwin.mak',
\     'mac': 'make -f make_mac.mak',
\     'linux': 'make',
\     'unix': 'gmake',
\    },
\ })
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
endif
call dein#add('airblade/vim-gitgutter')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('davidhalter/jedi-vim')
call dein#add('digitaltoad/vim-jade')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('easymotion/vim-easymotion')
call dein#add('leafgarland/typescript-vim')
call dein#add('godlygeek/tabular')
call dein#add('mxw/vim-jsx')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('klen/python-mode')
call dein#add('othree/html5.vim')
call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('pangloss/vim-javascript')
call dein#add('plasticboy/vim-markdown')
call dein#add('powerline/powerline')
call dein#add('scrooloose/nerdcommenter')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic')
call dein#add('sheerun/vim-polyglot') 
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-surround')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('yuttie/comfortable-motion.vim')
call dein#add('zchee/deoplete-jedi')
call dein#end()

set nocompatible
syntax enable
filetype plugin indent on
set number " Show lines number
set background=dark
set termguicolors

set tabstop     =4  " Width of tab character
set softtabstop =4  " Amount of white space to be added
set shiftwidth  =4  " Amount of whitespace to add in normal mode
set expandtab       " When on uses space instead of tabs

" airline config
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" nerdtree
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" syntaxtic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"indentguides
let g:indent_guides_enable_on_vim_startup = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
