" JavaScript syntax for JSON files
autocmd BufNewFile,BufRead *.json set ft=javascript
" UTF-8 as default encoding
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" Display special characters
set listchars=nbsp:¤,tab:>-,extends:>,precedes:<,trail:·
" See the difference between tabs and spaces and for trailing blanks
set list

" Use the appropriate number of spaces to insert a tab
set expandtab
" Number of spaces that a tab in the file counts for
set tabstop=2
" Number of spaces to use for each step of (auto)indent
set shiftwidth=2
" Number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=2
" When a bracket is inserted, briefly jump to the matching one
set showmatch
