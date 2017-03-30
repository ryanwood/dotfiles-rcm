set nocompatible

call plug#begin()


" Appearance
Plug 'mhartington/oceanic-next'
Plug 'itchyny/lightline.vim'

" Project
" Plug 'jistr/vim-nerdtree-tabs.git'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'JazzCore/ctrlp-cmatcher'
"Plug 'junegunn/fzf'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-session'

" Git
"Plug 'gregsexton/gitv'
"Plug 'mattn/gist-vim'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-git'


" Languages
"Plug 'sheerun/vim-polyglot'
"Plug 'garbas/vim-snipmate.git'
"Plug 'honza/vim-snippets'
"Plug 'jtratner/vim-flavored-markdown.git'
"Plug 'scrooloose/syntastic.git'
"Plug 'nelstrom/vim-markdown-preview'
"Plug 'skwp/vim-html-escape'
"Plug 'mxw/vim-jsx'
"Plug 'jparise/vim-graphql'


" Ruby
"Plug 'ecomba/vim-ruby-refactoring'
" Plug 'tpope/vim-rails.git'
" Plug 'tpope/vim-rake.git'
"Plug 'tpope/vim-rvm.git'
" Plug 'vim-ruby/vim-ruby.git'
" Plug 'keith/rspec.vim'
"Plug 'skwp/vim-iterm-rspec'
"Plug 'skwp/vim-spec-finder'
"Plug 'ck3g/vim-change-hash-syntax'
"Plug 'tpope/vim-bundler'

" Search
"Plug 'justinmk/vim-sneak'
" Plug 'rking/ag.vim'
"Plug 'henrik/vim-indexed-search'
"Plug 'nelstrom/vim-visual-star-search'
"Plug 'skwp/greplace.vim'
" Plug 'Lokaltog/vim-easymotion'

" Improvements

"Plug 'AndrewRadev/splitjoin.vim'
"Plug 'Raimondi/delimitMate'
"Plug 'Shougo/neocomplete.git'
"Plug 'briandoll/change-inside-surroundings.vim.git'
"Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
"Plug 'vim-scripts/camelcasemotion.git'
"Plug 'vim-scripts/matchit.zip.git'
"Plug 'kristijanhusak/vim-multiple-cursors'
"Plug 'Keithbsmiley/investigate.vim'
"Plug 'chrisbra/NrrwRgn'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'MarcWeber/vim-addon-mw-utils.git'
"Plug 'bogado/file-line.git'
"Plug 'mattn/webapi-vim.git'
"Plug 'sjl/gundo.vim'
"Plug 'skwp/YankRing.vim'
"Plug 'tomtom/tlib_vim.git'
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-endwise.git'
" Plug 'tpope/vim-ragtag'
" Plug 'tpope/vim-repeat.git'
" Plug 'tpope/vim-surround.git'
" Plug 'tpope/vim-unimpaired'
"Plug 'vim-scripts/AnsiEsc.vim.git'
"Plug 'vim-scripts/AutoTag.git'
"Plug 'vim-scripts/lastpos.vim'
"Plug 'vim-scripts/sudo.vim'
"Plug 'goldfeld/ctrlr.vim'
"Plug 'editorconfig/editorconfig-vim'

" OTher stuff to look at

"Plug 'henrik/vim-indexed-search'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'scrooloose/syntastic'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
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
call plug#end()


" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

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

colorscheme OceanicNext

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
set foldnestmax=3       "deepest fold is 3 levels
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

" =============== Windows +==========================

" More natural window panes
set splitbelow
set splitright

" Easy Switching
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-x> <c-w>x

" =============== Editing Config =+==================

map <leader>s :source ~/.vimrc<CR>


" =============== NERDTree ==========================

map <leader>n :NERDTreeToggle<cr>
map <leader>fn :NERDTreeFind<cr>
map <leader>ff :NERDTreeMirror<cr>
