" VimPlug Initialization {{{

call plug#begin()

" Appearance
" Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Project
Plug 'christoomey/vim-tmux-navigator'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-obsession'
Plug 'itchyny/lightline.vim'

" Git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Language/Syntax
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-liquid'

" Testing
Plug 'janko-m/vim-test'              " run test from vim
Plug 'tpope/vim-dispatch'
Plug 'neomake/neomake'               " runs make asynchronously in background
Plug 'ngmy/vim-rubocop'
Plug 'olalonde/jest-quickfix-reporter'
Plug 'milkypostman/vim-togglelist'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'  " Dependency for snipmate
Plug 'tomtom/tlib_vim'               " Dependency for snipmate
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Tools
Plug 'ervandew/supertab'
Plug 'tpope/vim-bundler'
Plug 'jgdavey/tslime.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-eunuch'             " Rename and other Unix helpers
Plug 'tommcdo/vim-lion'             " Alignment
Plug 'jc00ke/vim-tomdoc'            " Tomdoc snippets
Plug 'jrudess/vim-foldtext'         " Better fold text
Plug 'tpope/vim-jdaddy'
Plug 'w0rp/ale'
Plug 'pbrisbin/vim-mkdir'

" Search
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'skwp/greplace.vim'

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
Plug 'mbbill/undotree'
Plug 'tmux-plugins/vim-tmux-focus-events'

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
" Setting {{{

set clipboard=unnamed
set expandtab
set foldmethod=syntax             " fold based on syntax
set foldnestmax=10                " deepest fold is 3 levels
set gdefault                      " Default to /g at the end of regexes
set hidden                        " buffers can exist in the background without being in a window.
set lazyredraw                    " Attempt to speed things up
set ignorecase                    " Ignore case when searching...
set iskeyword+=-                  " Make dashed word, like CSS class act as a word (user-name)
set linebreak                     " Wrap lines at convenient points
set modelines=1
set mouse=a                       " Set mouse to scroll vim window - not terminal history"
set nofoldenable                  " dont fold by default
set noswapfile                    " Turn Off Swap Files
set nobackup
set nowb
set nowrap                        " Don't wrap lines
set number                        " Line numbers are good
set numberwidth=2                 " Use relative number except for the current line
set re=1                          " Faster Ruby (use the older regex engine) - faster for Ruby files - https://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
set relativenumber
set scrolloff=3                   " Start scrolling when we're X lines away from margins
set shiftwidth=2
set sidescrolloff=15
set showcmd                       " Show incomplete cmds down the bottom
set smartindent
set softtabstop=2
set showmatch
set showmode                      " Show current mode down the bottom
" set splitbelow
" set splitright
set smartcase                     " ...unless we type a capital
set tabstop=2
set timeoutlen=1000 ttimeoutlen=0 " Fix <shift-O> after <esc> delay https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set undofile                      " Set persistent undo file (location set by neovim)
set wildmode=list:longest
set wildmenu                      " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~       " stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=vendor/ruby/**    " For local path gem installation
set wildignore+=node_modules/**
set wildignore+=bower_components/**

" ======================================================== }}}
" Appearence {{{

if (has("termguicolors"))
  set termguicolors
endif

colorscheme onedark
set guifont=Hack:h14

" To enable mode shapes, "Cursor" highlight, and blinking:
" https://neovim.io/doc/user/options.html#'guicursor'
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175
highlight Cursor gui=reverse guifg=NONE guibg=NONE
highlight Cursor gui=NONE guifg=bg guibg=fg

" Show a vertical line/guard at column 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=236  guibg=#2C323C
let &colorcolumn="80,".join(range(100,999),",")


" ======================================================== }}}
" Leader Mappings {{{

let mapleader=" "

" Adjust viewports to the same size
nnoremap <Leader>= <C-w>=
nnoremap <leader>] gt
nnoremap <leader>[ gT
" Close all except current tab
nnoremap <leader>\ :tabonly<Enter>
" nmap <leader>' cs"'
map <Leader>' :call NumberToggle()<CR>

nmap <leader>; :%s/

" Navigating tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" fzf
nnoremap <leader>bb :Buffers<cr>
" Delete buffer but keep window. http://stackoverflow.com/questions/4298910/vim-close-buffer-but-not-split-window
nmap <leader>bd :bp<bar>bd#<CR>
" buffergator: View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>
" Close all buffers but the current one
nmap <leader>bo :%bd<cr>:e#<cr>

"Clone a Ruby/RSpec Method
nmap <leader>cm yar%o<esc>p
" Clone a paragraph
nnoremap <leader>cp yap<S-}>p

" map <Leader>d "_d<CR>
" map <Leader>D "_dd<CR>

" Some helpers to edit mode http://vimcasts.org/e/14
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>et :tabe %%

" format (align) the entire file
nnoremap <leader>fef :normal! gg=G``<CR>
" Reopen (find) the last closed pane and reopen in vertical split
nmap <leader>fl :vs<bar>:b#<CR>
" Full Zoom the current pane in a new tab. :wq to go back to the pane.
nnoremap <leader>fz :tabnew %<cr>

" fugitive
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

" Toggle hlsearch with <leader>hs
" nmap <leader>hs :set hlsearch! hlsearch?<CR>

" buffergator: Go to the previous buffer open
nmap <leader>j :BuffergatorMruCyclePrev<cr>

" buffergator: Go to the next buffer open
nmap <leader>k :BuffergatorMruCycleNext<cr>

map <leader>nf :NERDTreeFind<cr>
map <leader>nm :NERDTreeMirror<cr>
map <leader>nt :NERDTreeToggle<cr>

nnoremap <leader>o :Obsess

command! PromoteToLet :call PromoteToLet()
nmap <leader>p :PromoteToLet<cr>

nmap <Leader>rc :RuboCop<CR>
" Find in project
nnoremap <leader>rg :Rg<space>
" search & replace current word
map <Leader>rr :%S@<C-r><C-w>@

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

nmap <Leader>tf :w<CR>:TestFile<CR>
nmap <Leader>ts :w<CR>:TestNearest<CR>
nmap <Leader>tl :w<CR>:TestLast<CR>
nmap <Leader>ta :w<CR>:TestSuite<CR>
nmap <Leader>tv :w<CR>:TestVisit<CR>
" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>w :w<cr>

nnoremap <leader>ve :tabe $MYVIMRC<CR>
" Manually source it, there is an autocmd below to do this automatically.
nnoremap <leader>vs :source $MYVIMRC<CR>

" Toggle current fold
nnoremap <leader><leader> za

" Refocus folds
nnoremap <leader>z zMzvzz

" upper/lower word
" nmap <leader>u mQviwU`Q
" nmap <leader>l mQviwu`Q

" upper/lower first char of word
" nmap <leader>U mQgewvU`Q
" nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
" nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
" nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" ======================================================== }}}
" Non-Leader Mappings {{{

" Start a search based on the visually-selected text
vnoremap // y/<C-R>"<CR>

" Swap two words
" nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
" nmap <silent> <leader>ul :t.<CR>Vr=  " Causes delay on ',w'

" find merge conflict markers
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Make regex behave like Ruby or PRCE, not vim's weirdness
" Commented because this adds to the search phrase and breaks :AckFromSearch
" nnoremap / /\v
" vnoremap / /\v

" jk is escape. I also map Caps Lock to escapse on OSX
" inoremap jk <esc>

" Don't yank the results of the replaced text
vnoremap p "_dP

" Apply macros with ease
nnoremap Q @q
vnoremap Q :norm @q<cr>

" Handle accidental capitals
command! Q q " Bind :Q to :q
command! Qall qall
command! W w

" Make Y yank till end of line
nnoremap Y yg_

" Recursively top-level fold regardless of cursor
nnoremap zO zCzO

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Clear search result when hitting enter
nnoremap <CR> :nohlsearch<BAR>:echo<CR><CR>

" Use the tab key to navigate brackets; allow remap for matchit
nmap <tab> %
vmap <tab> %

" Move visual block up/down with indentation
xnoremap <C-j> :m'>+<CR>gv=gv
xnoremap <C-k> :m-2<CR>gv=gv

" After whitespace, insert the current directory into a command-line path
cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : "\<C-P>"

" fzf
nnoremap <c-p> :Files<cr>

" " Easy Switching - Now built in the vim-tmux-navigator plugin
" map <c-h> <c-w>h
" map <c-j> <c-w>j
" map <c-k> <c-w>k
" map <c-l> <c-w>l
noremap <c-x> <c-w>x

" ======================================================== }}}
" AutoCommands {{{

" Set unusual filetypes
autocmd BufNewFile,BufRead *.jb set filetype=ruby

" Source vimrc/init when saved
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" vim-commentary - fix comments
autocmd FileType slim setlocal commentstring=/\ %s
autocmd FileType yml setlocal commentstring=#\ %s

" Trigger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

autocmd InsertLeave * :call NumberToggle()
autocmd InsertEnter * :call NumberToggle()

" Automatically resize splits when resizing MacVim window
autocmd VimResized * wincmd =

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" ======================================================== }}}
" Custom Functions {{{

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

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

" ======================================================== }}}
" Plugin Settings {{{

" ale {{{

" fix files on save
let g:ale_fix_on_save = 1

" lint after 1000ms after changes are made both on insert mode and normal mode
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

" use nice symbols for errors and warnings
let g:ale_sign_error = '✗\ '
let g:ale_sign_warning = '⚠\ '

" fixer configurations
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

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

" ======================================================== }}}
" emmet-vim {{{

" make emmet behave well with JSX in JS and TS files
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends' : 'tsx',
\  },
\}

" ======================================================== }}}
" greplace.vim {{{

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" ======================================================== }}}
" lightline.vim {{{

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" ======================================================== }}}
" neomake {{{

let g:neomake_open_list = 2

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

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

" ======================================================== }}}
" vim-closetag {{{

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" ======================================================== }}}
" vim-rubocop {{{

let g:vimrubocop_keymap = 0

" ======================================================== }}}
" vim-ruby {{{

let g:ruby_indent_access_modifier_style = 'outdent'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_block_style = 'do'

" ======================================================== }}}
" vim-test {{{

" let g:dispatch_quickfix_height=25

" let test#strategy = "basic"
" let test#strategy = "dispatch"
" let test#strategy = "vimterminal"
" let test#strategy = "vimux"
let g:test#strategy = 'neomake'

let g:test#javascript#jest#options = '--reporters jest-vim-reporter'


" ======================================================== }}}
" ======================================================== }}}
"// " vim:foldmethod=marker:foldlevel=1:foldenable
