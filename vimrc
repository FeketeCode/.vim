set number
"set wildmode=longest,list
set hidden
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80,73

filetype indent on

packadd lsp
call LspAddServer([#{name: 'pylsp',
                 \   filetype: 'python',
                 \   path: '/usr/bin/pylsp',
                 \   args: []
                 \ }])
inoremap <C-S> <C-O>:call LspShowSignature()<CR>

nnoremap <F2> :Black<CR>
let g:black_linelength = 79
let g:black_skip_string_normalization = 1

" Run mypy on the currently open file.
nnoremap <F3> :!clear;python3 -m mypy %<CR>

" Run the currently open file.
nnoremap <F5> <Esc>:w<CR>:!clear;python3 %<CR>

let g:doge_doc_standard_python = 'google'
filetype plugin on
