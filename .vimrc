
" System info  {{{

" sometimes it's useful to know what we're running on
let OS=substitute(system('uname -s'),"\n","","")

" }}}
" Colors {{{

syntax enable           " enable syntax processing
set background=dark
colorscheme solarized

" }}}
" Spaces and tabs {{{

set tabstop     =4  " Width of tab character
set softtabstop =4  " Amount of white space to be added
set shiftwidth  =4  " Amount of whitespace to add in normal mode
set expandtab       " When on uses space instead of tabs

" }}}
" UI {{{

filetype indent on      " load filetype-specific indent files
filetype plugin indent on
set number              " show line numbers
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
set ruler               " show current line number
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set shortmess=atI       " hide intro message when starting vim
set title               " show current file name
set showmode            " show current mode
set showcmd             " show command in bottom bar
set laststatus=2        " always show status line
set noerrorbells        " disable error bells
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" }}}
" Backups {{{

" Centralize backups, swapfiles and undo history
set backup
set backupdir=~/.vim/backups
set backupskip=/tmp/*,/private/tmp/* " Skip creating backup when editing inside these dirs
set directory=~/.vim/swaps
set writebackup
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" }}}
" Folding {{{
set foldenable          " enable folding
set foldlevelstart=0    " close most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=marker   " fold based on indent level
"set foldlevel=0
set modeline
set modelines=1
" space open/closes folds
nnoremap <space> za
" }}}
" Search {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case of searches
set gdefault            " add g flag to search/replace by default
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Keymap {{{
let mapleader="," " change map leader
" }}}
" Movements {{{
set mouse=a             " enable mouse in all modes
set nostartofline       " disable reset cursor to start when moving around
" }}}
" Plugins install {{{

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim

call dein#begin(expand('~/.vim/dein')) " plugins root path

" Plugin list
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
" }}}
" Plugin: Airline {{{
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
" }}}
" Plugin: CtrlP {{{

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" }}}
" Plugin: Deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}
" Plugin: EditorConfig {{{

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" }}}
" Plugin: JS {{{
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
" }}}
" Plugin: NerdTree {{{
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" }}}
" Plugin: Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" Plugin: Indent-guides {{{

let g:indent_guides_enable_on_vim_startup = 1

" }}}


let g:solarized_termtrans=1
" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" MODELINES {{{

" vim: set foldmethod=marker :

" }}}
