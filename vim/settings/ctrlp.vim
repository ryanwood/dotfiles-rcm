let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|bower_components|node_modules|client'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
