filetype plugin indent on
set ma
set nocp
syntax on
set fileencodings=utf8,cp1251
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
set nu
set autoindent 
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
"set foldenable
set foldmethod=marker
set nobackup
set nowritebackup
set noswapfile
set wildmenu
set autochdir
nmap <F6> :TlistToggle<cr>
imap <F6> <esc>:TlistToggle<cr>i<right> 
noremap <F9> :NERDTree<CR>
noremap <F7> :NERDTreeClose<CR>
color vylight
fun! <SID>SetStatusLine()
    let l:s1="%-3.3n\\ %f\\ %h%m%r%w"
    let l:s2="[%{strlen(&filetype)?&filetype:'?'},%{&encoding},%{&fileformat}]"
    let l:s3="%=\\ 0x%-8B\\ \\ %-14.(%l,%c%V%)\\ %<%P"
    execute "set statusline=" . l:s1 . l:s2 . l:s3
endfun
set laststatus=2
call <SID>SetStatusLine()
set guifont=Droid\ Sans\ Mono\ 10
set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
"map <C-F12> :!ctags -R -f $tagfile --c++-kinds=+p --fields=+iaS --extra=+q $project_dir<CR>
let Tlist_Use_Horiz_Window = 1
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 1
let OmniCpp_DisplayMode = 1
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
set aw
set cpoptions+=$
set list listchars=tab:»-,trail:·,extends:»,precedes:«
set guioptions=
let NERDTreeShowLineNumbers=1
