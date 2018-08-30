set nocompatible
set encoding=utf-8
scriptencoding utf-8

" VimPlug Initialization {{{

call plug#begin()

" Appearance
" Plug 'mhartington/oceanic-next'
" Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

" Project
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-obsession'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'christoomey/vim-tmux-navigator'

" Git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'airblade/vim-gitgutter'

" Language/Syntax
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'keith/rspec.vim'
Plug 'slim-template/vim-slim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-liquid'
Plug 'keith/tmux.vim'
Plug 'wellbredgrapefruit/tomdoc.vim'
Plug 'stephpy/vim-yaml'
Plug 'elmcast/elm-vim'
Plug 'elixir-editors/vim-elixir'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'  " Dependency for snipmate
Plug 'tomtom/tlib_vim'               " Dependency for snipmate
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Tools
Plug 'ervandew/supertab'
Plug 'tpope/vim-bundler'
Plug 'jgdavey/tslime.vim'
" Plug 'majutsushi/tagbar'
" Plug 'mattn/emmet-vim'
" Plug 'mjacobus/vim-rspec-focus'
" Plug 'scrooloose/syntastic'
Plug 'thoughtbot/vim-rspec'         " Test Runners
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'             " Rename and other Unix helpers
Plug 'tommcdo/vim-lion'             " Alignment
Plug 'jc00ke/vim-tomdoc'            " Tomdoc snippets
Plug 'ngmy/vim-rubocop'
" Plug 'rlue/vim-fold-rspec'        " Better RSpec folding
Plug 'scottmcginness/vim-foldtext'  " Better fold text

" Search
" Plug 'justinmk/vim-sneak'
Plug 'mileszs/ack.vim'
" Plug 'henrik/vim-indexed-search'
Plug 'skwp/greplace.vim'
" Plug 'nelstrom/vim-visual-star-search'

" Text Objects
Plug 'kana/vim-textobj-user'        " Required for nelstrom/vim-textobj-rubyblock
Plug 'michaeljsmith/vim-indent-object'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'glts/vim-textobj-comment'

" " Improvements
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'vim-scripts/matchit.zip'
" Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'sjl/gundo.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'xolox/vim-misc'   " Required for vim-notes
Plug 'xolox/vim-notes'

call plug#end()

" Plug 'briandoll/change-inside-surroundings.vim'
" Plug 'godlygeek/tabular'
" Plug 'vim-scripts/camelcasemotion'
" Plug 'kristijanhusak/vim-multiple-cursors'
" Plug 'Keithbsmiley/investigate.vim'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'bogado/file-line'
" Plug 'vim-scripts/AutoTag'
" Plug 'vim-scripts/lastpos.vim'
" Plug 'vim-scripts/sudo.vim'
" Plug 'goldfeld/ctrlr.vim'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'mbbill/undotree'
" Plug 'majutsushi/tagbar'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'Valloric/MatchTagAlways'
" Plug 'EinfachToll/DidYouMean'
" Plug 'chrisbra/csv.vim'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'dhruvasagar/vim-table-mode'
" Plug 'mattn/webapi-vim'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'aklt/plantuml-syntax'
" Plug 'AndrewRadev/sideways.vim'
" Plug 'kassio/neoterm'
" Plug 'janko-m/vim-test'

" ======================================================== }}}
" General Config {{{

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
set colorcolumn=80              " ,100
set clipboard=unnamed
set updatetime=250              " Needed for vim-gitgutter to refresh page afte 250ms vs 4s (default)
set mouse=a                     " Set mouse to scroll vim window - not terminal history"
set re=1                        " Faster Ruby (use the older regex engine) - faster for Ruby files - https://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
set lazyredraw                  " Attempt to speed things up

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=" "

" Reload changes outside vim
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
autocmd CursorHold,CursorHoldI,FocusGained,BufEnter * checktime
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Mouse won't work past 223rd column without this...
" https://github.com/vim/vim/issues/2309
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" ======================================================== }}}
" tmux Integration {{{

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  " For terminal...
  " let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  " let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
  " For tmux...
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

" autocmd WinEnter * setlocal cursorline
" autocmd WinLeave * setlocal nocursorline


" ======================================================== }}}
" Theme {{{

if (has("termguicolors"))
  set termguicolors
endif

set guifont=Hack:h14

set background=dark
colorscheme gruvbox

" colorscheme OceanicNext

" let g:solarized_termcolors=16
" set t_Co=16
" set background=dark
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" colorscheme solarized

" ======================================================== }}}
" Turn Off Swap Files {{{

set noswapfile
set nobackup
set nowb

" ======================================================== }}}
" Persistent Undo {{{

" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ======================================================== }}}
" Indentation {{{

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ======================================================== }}}
" Folds {{{

set foldmethod=syntax    "fold based on syntax
set foldnestmax=10       "deepest fold is 3 levels
set nofoldenable         "dont fold by default

" Toggle current fold
nnoremap <leader>x za
vnoremap <leader>x za

" Refocus folds
nnoremap <leader>z zMzvzz

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO

" ======================================================== }}}
" Completion {{{

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
set wildignore+=vendor/ruby/**   " For local path gem installation
set wildignore+=node_modules/**
set wildignore+=bower_components/**

" ======================================================== }}}
" Scrolling {{{

set scrolloff=3         "Start scrolling when we're X lines away from margins
set sidescrolloff=15
set sidescroll=1

" ======================================================== }}}
" Search {{{

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set showmatch
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set gdefault        " Default to /g at the end of regexes

" Use the tab key to navigate brackets; allow remap for matchit
nmap <tab> %
vmap <tab> %
" ======================================================== }}}
" Words {{{

" Make dashed word, like CSS class act as a word (user-name)
" https://til.hashrocket.com/posts/t8osyzywau-treat-words-with-dash-as-a-word-in-vim
set iskeyword+=-

" ======================================================== }}}
" Windows {{{

" More natural window panes
" set splitbelow
" set splitright
" set winheight=30   " This is causing issues when the window is too small
" set winminheight=5

" " Easy Switching - Now built in the vim-tmux-navigator plugin
" map <c-h> <c-w>h
" map <c-j> <c-w>j
" map <c-k> <c-w>k
" map <c-l> <c-w>l
noremap <c-x> <c-w>x

" Adjust viewports to the same size
nnoremap <Leader>= <C-w>=

" Automatically resize splits when resizing MacVim window
autocmd VimResized * wincmd =

" ======================================================== }}}
" Utility {{{

" jk is escape. I also map Caps Lock to escapse on OSX
inoremap jk <esc>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>v :tabe $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Sometimes there is a delay when saving this file. I think this may be why.
" if has("autocmd")
"   autocmd bufwritepost .vimrc source $MYVIMRC
" endif

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Delete buffer but keep window. http://stackoverflow.com/questions/4298910/vim-close-buffer-but-not-split-window
nmap <leader>bd :bp<bar>bd#<CR>
nnoremap <CR> :nohlsearch<BAR>:echo<CR><CR>  " GRB: clear the search buffer when hitting return
" nnoremap <ESC> :nohlsearch<BAR>:echo<CR><ESC>
" nnoremap <esc> :noh<cr><esc>

" Close all buffers but the current one
nmap <leader>bo :%bd<cr>:e#<cr>

nmap <leader>T :enew<cr>

" Clone a paragraph
nnoremap <leader>cp yap<S-}>p

"Clone a Ruby/RSpec Method
nmap <leader>cm yar%o<esc>p

" ======================================================== }}}
" Mappings {{{

""
"" General Mappings (Normal, Visual, Operator-pending)
""

" Toggle paste mode
" nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
" imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format (align) the entire file
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
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>et :tabe %%

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
" nmap <silent> <leader>ul :t.<CR>Vr=  " Causes delay on ',w'

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Make regex behave like Ruby or PRCE, not vim's weirdness
nnoremap / /\v
vnoremap / /\v

" Make Y yank till end of line
nnoremap Y yg_

""
"" Command-Line Mappings
""

" After whitespace, insert the current directory into a command-line path
cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : "\<C-P>"

set modelines=1

" Promote a variable to an rspec let statement.
"
" Convert lines that look like `x = y` to lines that look like
" `let(:x){ y }`.

function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction

command! PromoteToLet :call PromoteToLet()
nmap <leader>p :PromoteToLet<cr>

" Apply macros with ease
nnoremap Q @q
vnoremap Q :norm @q<cr>

" ======================================================== }}}
" Plugin Settings {{{

" If we source from different files - becomes less manageable
" so ~/.vim/settings.vim

" ack.vim {{{

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nmap <leader>ff :Ack!<space>
nmap <leader>fs :AckFromSearch .<cr>

" ======================================================== }}}
" buffergator.vim {{{

let g:buffergator_sort_regime = "mru"
let g:buffergator_autoexpand_on_split = 0
let g:buffergator_display_regime = "basename"
let g:buffergator_show_full_directory_path = 0
let g:buffergator_split_size = 50

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" ======================================================== }}}
" ctrlp.vim {{{

let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
        \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$" --hidden'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" Default to filename searches - so that appctrl will find application
" controller
" let g:ctrlp_by_filename = 1

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
" let g:ctrlp_switch_buffer = 0

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
" nmap <leader>p :CtrlP<cr>  " Using <leader>p for Promote to Let

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" ======================================================== }}}
" fugitive.vim {{{

nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gw :Gwrite<CR><CR>

" ======================================================== }}}
" greplace.vim {{{

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" ======================================================== }}}
" gundo.vim {{{

nnoremap <leader>u :GundoToggle<CR>

" ======================================================== }}}
" nerdtree.vim {{{

map <leader>n :NERDTreeToggle<cr>
map <leader>fn :NERDTreeFind<cr>
map <leader>mn :NERDTreeMirror<cr>

" ======================================================== }}}
" Seeing Is Believing {{{

" https://github.com/JoshCheek/seeing_is_believing/wiki/Editor-Integration

" Assumes you have a Ruby with SiB available in the PATH
" If it doesn't work, you may need to `gem install seeing_is_believing`

" Annotate every line
  nmap <leader>saa :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
" Remove annotations
  nmap <leader>sc :%.!seeing_is_believing --clean<CR>;

" Mark the current line for annotation
  nmap <leader>sm A # => <Esc>
" Mark the highlighted lines for annotation
  vmap <leader>sm :norm A # => <Esc>

" Annotate marked lines
  nmap <leader>sam :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
" ======================================================== }}}
" splitjoin {{{

let g:splitjoin_ruby_curly_braces = 0
let g:splitjoin_ruby_hanging_args = 0

" ======================================================== }}}
" tslime.vim {{{

let g:tslime_always_current_session = 1
nmap <C-c>r <Plug>SetTmuxVars

" ======================================================== }}}
" vim-better-whitespace.vim {{{

autocmd BufEnter * EnableStripWhitespaceOnSave

" ======================================================== }}}
" vim-closetag {{{

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" ======================================================== }}}
" vim-commentary {{{

autocmd FileType slim setlocal commentstring=/\ %s
autocmd FileType yml setlocal commentstring=#\ %s

" ======================================================== }}}
" vim-fold-rspec {{{
" By default, vim-fold-rspec honors global fold settings, override here:

" let g:fold_rspec_foldenable = 0      " disables folding (toggle with `zi`)
" let g:fold_rspec_foldlevel = 2       " sets initial open/closed state of all folds (open unless nested more than two levels deep)
" let g:fold_rspec_foldcolumn = 4      " shows a 4-character column on the lefthand side of the window displaying the document's fold structure
" let g:fold_rspec_foldclose = 'all'   " closes folds automatically when the cursor is moved out of them (only applies to folds deeper than 'foldlevel')
" let g:fold_rspec_foldminlines = 3    " disables closing of folds containing two lines or fewer

" ======================================================== }}}
" vim-foldtext {{{

" let g:FoldText_placeholder = '<...>'
let g:FoldText_line = 'L'
let g:FoldText_level = 'Z'
let g:FoldText_whole = 'O'
" let g:FoldText_division = '/'
" let g:FoldText_multiplication = '*'
" let g:FoldText_epsilon = '0'
" let g:FoldText_denominator = 25

set foldtext=CustomFoldText()

" ======================================================== }}}
" vim-notes {{{

let g:notes_directories = ['~/.notes']

" ======================================================== }}}
" vim-rspec.vim {{{

" Fix a bug with tmux-2.3 and vim-dispatch (note the trailing space)
"
" https://github.com/tpope/vim-dispatch/issues/192
set shellpipe=2>&1\|\ tee\ "Adding comment to allow final space

" let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:rspec_command = "Dispatch rspec {spec}"
nmap <Leader>t :w<CR>:call RunCurrentSpecFile()<CR>
nmap <Leader>s :w<CR>:call RunNearestSpec()<CR>
nmap <Leader>l :w<CR>:call RunLastSpec()<CR>
nmap <Leader>a :w<CR>:call RunAllSpecs()<CR>

" ======================================================== }}}
" vim-rubocop {{{

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

" ======================================================== }}}
" vim-ruby {{{

let g:ruby_indent_access_modifier_style = 'outdent'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_block_style = 'do'

" ======================================================== }}}
" vim-slim.vim {{{

" autocmd BufNewFile,BufRead *.skim setlocal filetype=slim

" ======================================================== }}}
" vim-sneak.vim {{{

let g:sneak#label = 1

" ======================================================== }}}
" vim_rspec_focus.vim {{{

nnoremap <leader>fa :AddFocusTag<CR>
nnoremap <leader>fr :RemoveAllFocusTags<CR>

" ======================================================== }}}
" yankring.vim {{{

" let g:yankring_history_file = '.yankring-history'
" nnoremap ,yr :YRShow<CR>
" nnoremap C-y :YRShow<CR>

" ======================================================== }}}
" ======================================================== }}}
"// " vim:foldmethod=marker:foldlevel=1:foldenable
