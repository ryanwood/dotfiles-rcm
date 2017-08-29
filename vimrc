set nocompatible
set encoding=utf-8
scriptencoding utf-8

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
set laststatus=2                " Needed for lightline - https://github.com/itchyny/lightline.vim#configuration-tutorial
" set colorcolumn=80,100
set clipboard=unnamed

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

"
" ======================================================== }}}
" VimPlug Initialization {{{

" " This loads all the plugins specified in ~/.vim/plugs.vim
" if filereadable(expand("~/.vim/plugs.vim"))
"   source ~/.vim/plugs.vim
" endif
" " au BufNewFile,BufRead *.vundle set filetype=vim

call plug#begin()

" Appearance
Plug 'itchyny/lightline.vim'
" Plug 'mhartington/oceanic-next'
" Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

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
Plug 'airblade/vim-gitgutter'

" Languages
Plug 'slim-template/vim-slim'
Plug 'sheerun/vim-polyglot'
Plug 'MarcWeber/vim-addon-mw-utils'  " Required for snipmate
Plug 'tomtom/tlib_vim'  " Required for snipmate
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'

" Ruby
Plug 'keith/rspec.vim'  " RSpec syntax
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'mjacobus/vim-rspec-focus'
Plug 'thoughtbot/vim-rspec'
Plug 'jgdavey/tslime.vim'
Plug 'tpope/vim-eunuch' " Rename and other Unix helpers

" Search
Plug 'justinmk/vim-sneak'
Plug 'mileszs/ack.vim'
Plug 'henrik/vim-indexed-search'
Plug 'skwp/greplace.vim'
Plug 'nelstrom/vim-visual-star-search'

" Improvements
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sjl/gundo.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'vim-scripts/ZoomWin'
Plug 'tmux-plugins/vim-tmux-focus-events'

call plug#end()

" Plug 'vim-scripts/YankRing.vim' # Conflicts with ctrlp
" Plug 'Raimondi/delimitMate'
" Plug 'Shougo/neocomplete'
" Plug 'briandoll/change-inside-surroundings.vim'
" Plug 'godlygeek/tabular'
" Plug 'vim-scripts/camelcasemotion'
" Plug 'vim-scripts/matchit.zip'
" Plug 'kristijanhusak/vim-multiple-cursors'
" Plug 'Keithbsmiley/investigate.vim'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'bogado/file-line'
" Plug 'mattn/webapi-vim'
" Plug 'tomtom/tlib_vim'
" Plug 'vim-scripts/AnsiEsc.vim'
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
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'vim-utils/vim-ruby-fold'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'chrisbra/csv.vim'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'kana/vim-textobj-user'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'dhruvasagar/vim-table-mode'
" Plug 'mattn/webapi-vim'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'aklt/plantuml-syntax'
" Plug 'AndrewRadev/sideways.vim'
" Plug 'kassio/neoterm'
" Plug 'janko-m/vim-test'

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

"
" ======================================================== }}}
" Scrolling {{{

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ======================================================== }}}
" Search {{{

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ======================================================== }}}
" Windows {{{

" More natural window panes
set splitbelow
set splitright

" " Easy Switching - Now built in the vim-tmux-navigator plugin
" map <c-h> <c-w>h
" map <c-j> <c-w>j
" map <c-k> <c-w>k
" map <c-l> <c-w>l
" map <c-x> <c-w>x

" Adjust viewports to the same size
map <Leader>= <C-w>=


if has("gui_running") && has("autocmd")
  " Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif

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

nmap <leader>w :w<cr><esc>
" Delete buffer but keep window. http://stackoverflow.com/questions/4298910/vim-close-buffer-but-not-split-window
nmap <leader>bd :bp<bar>bd#<CR>
nnoremap <CR> :nohlsearch<BAR>:echo<CR><CR>  " GRB: clear the search buffer when hitting return

nmap <leader>T :enew<cr>
" ======================================================== }}}
" Mappings {{{

""
"" General Mappings (Normal, Visual, Operator-pending)
""

" Toggle paste mode
" nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
" imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" Toggle current fold (Disabled now that we are using Space as leader)
" nnoremap <Space> za

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
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

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

set modelines=1

" ======================================================== }}}
" Plugin Settings {{{

" If we source from different files - becomes less manageable
" so ~/.vim/settings.vim

" ack.vim {{{

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  map <D-F> :Ack<space>
  nnoremap <leader>a :Ack<space>
else
  " Define <C-F> to a dummy value to see if it would set <C-f> as well.
  map <C-F> :dummy

  if maparg("<C-f>") == ":dummy"
    " <leader>f on systems where <C-f> == <C-F>
    map <leader>f :Ack<space>
  else
    " <C-F> if we can still map <C-f> to <S-Down>
    map <C-F> :Ack<space>
  endif

  map <C-f> <S-Down>
endif

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

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
        \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$|bower_components|node_modules'
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
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" ======================================================== }}}
" fugitive.vim {{{

" nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
" nnoremap <leader>gc :Gcommit -v -q<CR>
" nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>

" ======================================================== }}}
" greplace.vim {{{

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" ======================================================== }}}
" gundo.vim {{{

nnoremap <leader>u :GundoToggle<CR>

" ======================================================== }}}
" lightline.vim {{{

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "\ue0a2"
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? "\ue0a0 ".branch : ''
  endif
  return ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

" ======================================================== }}}
" nerdtree.vim {{{

map <leader>n :NERDTreeToggle<cr>
map <leader>fn :NERDTreeFind<cr>
map <leader>mn :NERDTreeMirror<cr>

" ======================================================== }}}
" tcomment.vim {{{

if has("gui_macvim") && has("gui_running")
  map <D-/> :TComment<CR>
  imap <D-/> <Esc>:TComment<CR>i
else
  map <leader>/ :TComment<CR>
endif

call tcomment#DefineType('slim', '/ %s')

" ======================================================== }}}
" vim-better-whitespace.vim {{{

autocmd BufEnter * EnableStripWhitespaceOnSave


" ======================================================== }}}
" vim-rspec.vim {{{

let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ======================================================== }}}
" vim-sneak.vim {{{

let g:sneak#label = 1

" ======================================================== }}}
" vim_rspec_focus.vim {{{

nnoremap <leader>fa :AddFocusTag<CR>
nnoremap <leader>fr :RemoveAllFocusTags<CR>

" ======================================================== }}}
" yankring.vim {{{

let g:yankring_history_file = '.yankring-history'
nnoremap ,yr :YRShow<CR>
nnoremap C-y :YRShow<CR>

" ======================================================== }}}
" zoomwin.vim {{{

map <leader>zw :ZoomWin<CR>

" ======================================================== }}}

" ======================================================== }}}
"// " vim:foldmethod=marker:foldlevel=1:foldenable
