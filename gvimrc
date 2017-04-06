set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set guioptions-=r                 " Don't show right scrollbar
set lines=100 columns=160         " Window dimensions.

" Disable the print key and map to ctrl-p
if has("gui_macvim") && has("gui_running")
  macmenu File.Print key=<nop>
  map <D-p> :CtrlP<CR>
  imap <D-p> <ESC>:CtrlP<CR>
endif

