if has("gui_macvim") && has("gui_running")
  map <D-/> :TComment<CR>
  imap <D-/> <Esc>:TComment<CR>i
else
  map <leader>/ :TComment<CR>
endif

call tcomment#DefineType('slim', '/ %s')

