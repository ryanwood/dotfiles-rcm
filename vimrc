set nocompatible

call plug#begin()

" Appearance
Plug 'itchyny/lightline.vim'
" Plug 'mhartington/oceanic-next'
" Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

" Project
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'vim-scripts/ZoomWin'

" Git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'

" Languages
Plug 'slim-template/vim-slim'

" Ruby
Plug 'keith/rspec.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
" Plug 'vim-ruby/vim-ruby'

" Search
Plug 'justinmk/vim-sneak'

" Improvements
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sjl/gundo.vim'

call plug#end()

"""""""""""""""""""""""""""
" Plugins that need vetting
"""""""""""""""""""""""""""

" Project
" Plug 'jistr/vim-nerdtree-tabs.git'
" Plug 'JazzCore/ctrlp-cmatcher'
" Plug 'junegunn/fzf'

" Git
"Plug 'gregsexton/gitv'
"Plug 'mattn/gist-vim'

" Languages
" Plug 'sheerun/vim-polyglot'
" Plug 'garbas/vim-snipmate.git'
" Plug 'honza/vim-snippets'
" Plug 'jtratner/vim-flavored-markdown.git'
" Plug 'scrooloose/syntastic.git'
" Plug 'nelstrom/vim-markdown-preview'
" Plug 'skwp/vim-html-escape'
" Plug 'mxw/vim-jsx'
" Plug 'jparise/vim-graphql'

" Ruby
" Plug 'ecomba/vim-ruby-refactoring'
" Plug 'tpope/vim-rake.git'
" Plug 'tpope/vim-rvm.git'
" Plug 'skwp/vim-iterm-rspec'
" Plug 'skwp/vim-spec-finder'
" Plug 'ck3g/vim-change-hash-syntax'

" Search
" Plug 'rking/ag.vim'
" Plug 'henrik/vim-indexed-search'
" Plug 'nelstrom/vim-visual-star-search'
" Plug 'skwp/greplace.vim'
" Plug 'Lokaltog/vim-easymotion'

" Improvements

" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'Raimondi/delimitMate'
" Plug 'Shougo/neocomplete.git'
" Plug 'briandoll/change-inside-surroundings.vim.git'
" Plug 'godlygeek/tabular'
" Plug 'vim-scripts/camelcasemotion.git'
" Plug 'vim-scripts/matchit.zip.git'
" Plug 'kristijanhusak/vim-multiple-cursors'
" Plug 'Keithbsmiley/investigate.vim'
" Plug 'chrisbra/NrrwRgn'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'MarcWeber/vim-addon-mw-utils.git'
" Plug 'bogado/file-line.git'
" Plug 'mattn/webapi-vim.git'
" Plug 'sjl/gundo.vim'
" Plug 'skwp/YankRing.vim'
" Plug 'tomtom/tlib_vim.git'
" Plug 'vim-scripts/AnsiEsc.vim.git'
" Plug 'vim-scripts/AutoTag.git'
" Plug 'vim-scripts/lastpos.vim'
" Plug 'vim-scripts/sudo.vim'
" Plug 'goldfeld/ctrlr.vim'
" Plug 'editorconfig/editorconfig-vim'

" Other stuff to look at

" Plug 'henrik/vim-indexed-search'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'scrooloose/syntastic'
" Plug 'mbbill/undotree'
" Plug 'vim-scripts/YankRing.vim'
" Plug 'majutsushi/tagbar'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'Valloric/MatchTagAlways'
" Plug 'EinfachToll/DidYouMean'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'vim-utils/vim-ruby-fold'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'chrisbra/csv.vim'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'airblade/vim-gitgutter'
" Plug 'godlygeek/tabular'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'kana/vim-textobj-user'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'dhruvasagar/vim-table-mode'
" Plug 'mattn/webapi-vim'
" Plug 'mattn/gist-vim'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'aklt/plantuml-syntax'
" Plug 'AndrewRadev/sideways.vim'
" Plug 'kassio/neoterm'
" Plug 'janko-m/vim-test'
" Plug 'flazz/vim-colorschemes'


" ================ General Config ====================

set number                      " Line numbers are good
set relativenumber              " Relative numbers Help with movements
set numberwidth=2               " Use relative number except for the current line
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set clipboard=unnamed           " Yank to the system clipboard

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Theme
if (has("termguicolors"))
  set termguicolors
endif

" colorscheme OceanicNext
set background=dark
" colorscheme solarized
colorscheme gruvbox

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
" if filereadable(expand("~/.vim/vundles.vim"))
"   source ~/.vim/vundles.vim
" endif
" au BufNewFile,BufRead *.vundle set filetype=vim

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=10       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" =============== Windows ===========================

" More natural window panes
set splitbelow
set splitright

" Easy Switching
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-x> <c-w>x

" Adjust viewports to the same size
map <Leader>= <C-w>=


if has("gui_running") && has("autocmd")
  " Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif

" =============== Utility ==========================

" jk is escape. I also map Caps Lock to escapse on OSX
inoremap jk <esc>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>v :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Sometimes there is a delay when saving this file. I think this may be why.
" if has("autocmd")
"   autocmd bufwritepost .vimrc source $MYVIMRC
" endif

nmap <leader>w :w<cr><esc>
" Delete buffer but keep window. http://stackoverflow.com/questions/4298910/vim-close-buffer-but-not-split-window
nmap <leader>d :bp<bar>bd#<CR>
nnoremap <CR> :nohlsearch<BAR>:echo<CR><CR>  " GRB: clear the search buffer when hitting return

" =============== NERDTree ==========================

map <leader>n :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
map <leader>nm :NERDTreeMirror<cr>

" =============== tComment ==========================

if has("gui_macvim") && has("gui_running")
  map <D-/> :TComment<CR>
  imap <D-/> <Esc>:TComment<CR>i
else
  map <leader>/ :TComment<CR>
endif

call tcomment#DefineType('slim', '/ %s')

" =============== BufferGator =======================

let g:buffergator_sort_regime = "mru"
let g:buffergator_autoexpand_on_split = 0
let g:buffergator_display_regime = "basename"
let g:buffergator_show_full_directory_path = 0
let g:buffergator_split_size = 50

" =============== vim-better-whitespace =============

" https://github.com/ntpeters/vim-better-whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave

" =============== gundo =============================

nnoremap <leader>u :GundoToggle<CR>

" =============== ZoomWin ===========================

map <leader>zw :ZoomWin<CR>

" =============== Mappings ==========================


""
"" General Mappings (Normal, Visual, Operator-pending)
""

" Toggle paste mode
" nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
" imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" Toggle current fold
nnoremap <Space> za

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" upper/lower word
" nmap <leader>u mQviwU`Q
" nmap <leader>l mQviwu`Q

" upper/lower first char of word
" nmap <leader>U mQgewvU`Q
" nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
" nmap <silent> <leader>ul :t.<CR>Vr=  " Causes delay on ',w'

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

if has("gui_macvim") && has("gui_running")
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <D-]> >gv
  vmap <D-[> <gv

  nmap <D-]> >>
  nmap <D-[> <<

  omap <D-]> >>
  omap <D-[> <<

  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i

  " Bubble single lines
  nmap <D-Up> [e
  nmap <D-Down> ]e
  nmap <D-k> [e
  nmap <D-j> ]e

  " Bubble multiple lines
  vmap <D-Up> [egv
  vmap <D-Down> ]egv
  vmap <D-k> [egv
  vmap <D-j> ]egv

  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt
endif

""
"" Command-Line Mappings
""

" After whitespace, insert the current directory into a command-line path
cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : "\<C-P>"

