set ruler
colorscheme peachpuff
let g:airline#extensions#tabline#enabled = 1
nmap <F7> :NERDTree<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :Tlist<CR>
map <c-l> :CtrlPBufTagAll<CR>
nmap ,c :%s///gn
let g:airline#extensions#tagbar#enabled = 1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#formatter = 'unique_tail'
set encoding=utf-8
set hlsearch
set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set shiftwidth=4
"set softtabstop=2
set cindent
set autoindent
set smartindent
set smarttab
set expandtab
set incsearch
set number
set cscopequickfix=s-,c-,d-,i-,t-,e-
set makeprg=build-system
set cursorline
set updatetime=100
set noic
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline
" Highlight tab characters
set listchars=tab:>-
" ,trail:~
" set listchars=tab:>-,trail:~,extends:>,precedes:<,eol:$
highlight SpecialKey ctermfg=DarkBlue
set list
checktime

" Tab hotkeys
nnoremap space i<space><esc>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

execute pathogen#infect()
augroup filetypedetect
	au! BufNewFile,BufRead *.yang,*.yin setf yang
augroup END
filetype indent on
filetype on
filetype plugin on
syntax on
let g:airline_powerline_fonts = 1
set laststatus=2
fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map ,g :call ShowFuncName() <cr>
nnoremap ,f :cs find f
nnoremap ,t :cs find t
nnoremap ,n :NERDTree <CR>
set wildmenu
set path=$PWD/**
" autocmd FileType c,cpp,java,php,yang,pl autocmd BufWritePre <buffer> :%s/\s\+$//e
" This will remove all trailing white space and other, don't want to use it as
" there are so many indentation problem here
" autocmd BufWritePre * %s/\s\+$//e
" autocmd FileType yang setlocal shiftwidth=2 tabstop=2 expandtab

:set guioptions-=T  "remove toolbar
:set noerrorbells
:set vb
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:indentLine_enabled = 0

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['python3']
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"
let g:NERDTreeNodeDelimiter = "\u00a0"
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files = 0

highlight! link SignColumn LineNr
"highlight GitGutterAdd    guifg=#009900 ctermfg=2
"highlight GitGutterChange guifg=#bbbb00 ctermfg=3
"highlight GitGutterDelete guifg=#ff2222 ctermfg=1

highlight GitGutterAdd    guifg=#009900 ctermfg=169
highlight GitGutterChange guifg=#bbbb00 ctermfg=76
highlight GitGutterDelete guifg=#ff2222 ctermfg=132
