" Load plugins
execute pathogen#infect()
filetype plugin indent on
" Colorscheme
colorscheme molokai
" Settings
set number  
set encoding=utf-8
set tabstop=4
set shiftwidth=4
syntax on
" Go stuff
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0
let g:go_disable_autoinstall = 0
let g:syntatic_go_checkers = ['golint']
" Neocomplete
let g:neocomplete#enable_at_startup = 1
" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1
" Tagbar 
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
nmap <F8> :TagbarToggle<CR>
" NerdTree
map <C-n> :NERDTreeToggle<CR>
