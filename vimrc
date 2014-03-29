""""""""""""""""""""""""""""""""""""""""
"
" Sections:
"   -> Common settings
"   -> Vundle settings
"   -> Color theme settings
"   -> Text file settings
"   -> Programming settings
"   -> Keyboard mappings

" Common settings
set nocompatible " The most important setting

set wildchar=<Tab> wildmenu wildmode=full

filetype off
filetype plugin indent off

"" Move settings
map j gj
map k gk

"" Buffer settings
set hidden
set switchbuf=useopen,usetab

"" Tab settings
set showtabline=2

"" Statusline settings
set laststatus=2
set statusline=%m%r\"%f\"\ \ %P\ (%l,%c)\ %y

"" Search settings
set ignorecase
set smartcase
set hlsearch
set incsearch

"" Encoding settings
set encoding=utf-8
set fileencodings=utf-8,gbk

"" Backups settings
set noswapfile " turn swap file off 

" Vundle settings
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"" My bundles here (original repos on github)
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdcommenter'
Bundle 'plasticboy/vim-markdown'
Bundle 'junegunn/vim-easy-align'
Bundle 'diabloneo/cscope_maps.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'majutsushi/tagbar'

filetype plugin indent on 
filetype plugin on

" Color theme settings
syntax enable 

" Diectory settings

"" Netrw settings
let g:netrw_list_hide='.*\.o$,.*\.d$'

"" CtrlP settings
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

let g:ctrlp_working_path_mode='ra'

" Text file settings

"" Tab and indent settings
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent

""" cindent settings
set cinoptions=(0:0l1

"" Markdown language
let g:vim_markdown_folding_disabled=1

" Programming settings
"" Common programming settings
set colorcolumn=81

"" Tagging system settings

""" Cscope settings
set cscopetag
"# use quickfix window to display tagging result
set cscopequickfix=s-,c-,d-,i-,t-,e-,f-,g-

""" Tagbar settings
:nmap <F8> :TagbarToggle<CR>

"# extend tagbar for golang
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

"" EasyAlign mappings
:vmap <Enter> <Plug>(EasyAlign)
:nmap <Leader>a <Plug>(EasyAlign)

"" C programming language
:augroup cprograms
:   autocmd FileReadPost *.c :set cindent
:   autocmd FileReadPost *.h :set cindent
:   autocmd FileReadPost *.hbh :set cindent 
:   autocmd FileReadPost *.hbc :set cindent
:augroup END

"" Python programming language
""" python-mode settings
let g:pymode_rope=1
let g:pymode_rope_complete_on_dot=0

"""" Documentation
let g:pymode_doc=1
let g:pymode_doc_key='K'

"""" Run code
let g:pymode_run=1
let g:pymode_run_key='<leader>r'

"""" Linting
let g:pymode_lint=1
let g:pymode_lint_checker=" pyflakes,pep8"
let g:pymode_lint_write=1

"""" Support virtualenv
let g:pymode_virtualenv=1

"""" Enable breakpoints plugin
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

"""" Syntax highlighting
let g:pymode_syntax=1
let g:pymode_syntax_all=1
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all

"""" Don's autofold code
let g:pymode_folding=0

"" Go programming language

" Keyboard mappings
:nmap <Space> :nohl<CR>
:nnoremap <C-k>0 :vsplit<CR><C-w><C-w>:split<CR><C-w><C-w><C-w>
:nnoremap <F2> :botright copen<CR>
:nnoremap <F4> :cclose<CR>

