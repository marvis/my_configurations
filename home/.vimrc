"********************************************************
" Current Vim Plugins
"********************************************************
" 1. latex suit
" 2. omnicppcomplete | SuperTab | taglist
" 3. chinese doc
" 4. vimgdb
" 5. author infor    |      bash support

"********************************************************
" General
"********************************************************
set nocp                             " set nocompatible
set bs=2                             " make backspace work normal
set helplang=cn                      " chinese help, install first
"set showmatch                        " 
set vb t_vb=                         " 去除命令错误时的响声
"set ruler                           " 显示光标所在的行号
"set fdm=indent                       " indent, syntax

"Display : Filetype, Indent, Syntax, LineNumber, 
filetype on                          " detect the type of file
filetype plugin indent on 			 " plugin:ON  indent:ON, see :filetype
set autoindent                       " always set autoindenting on
set smartindent                      " improve the indent
"set cindent                         " C/C++ indent
set tabstop=4                        " tab spacing
set shiftwidth=4
syntax on                            " 打开高亮
"syntax enable                       " enable syntax highlighting
"set nu                              " set number
"set nowrap                           " do not wrap lines, 不自动换行

" Files/Backups
set nobackup 						 " make backup file, default : nobackup
set autowrite                        " auto writefile when :make or :last or others

" Paste
"set paste                           " default is set nopaste

set history=100                      " How many lines of history to remember, default 20

" Folding
"set foldenable                       " Turn on folding
"set foldlevel=100                    " Don’t autofold anything (but I can still fold manually)
"set foldopen-=search                 " don’t open folds when you search into them
"set foldopen-=undo                   " don’t open folds when you undo stuff

" Status
set laststatus=2                     " always show the status line
"set statusline=%t                   " :help statusline for details
set statusline=%<<#%n>\ %f%m%r%h%w[%{&ff}][%{(&fenc==\"\")?&enc:&fenc}]%y[%L]%=[%b:0x%B]\ [%l,%c][%p%%] 


" Searching
"set nowrapscan                       " 不循环查找 
set incsearch                        "在输入要搜索的文字时，vim会实时匹配
"set hlsearch                         " 高亮显示匹配的结果

"启用鼠标
"set mouse=n
"set selection=exclusive
"set selectmode=mouse,key

" 显示特殊字符
"set list

"设置编码自动识别, 中文引号显示
set fileencodings=utf-8,gbk,cp936,ucs-bom
"set encoding=euc-cn
set encoding=utf-8
"set ambiwidth=double
"let &termencoding=&encoding
set termencoding=utf-8

" Key Mapping 
"let mapleader = ","                  " default leader is \

"map <C-L><C-L> <ESC>:tabprevious <CR>  " change the previous page
"map <C-R><C-R> <ESC>:tabnext <CR>      " change to the next page

"********************************************************
" NERD Commenter
"********************************************************
let NERDShutUp=1


"********************************************************
" Omni cpp complete, CTags, Taglist, 
"********************************************************
set nocp
filetype plugin on
filetype indent on
set tags+=~/.vim/tags/v3d_main_tags
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/boost
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/qtgui
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qtcore

map <C-M><C-M> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-M><C-K> :Tlist<CR>:set mouse=n<CR>
set completeopt=menu    " 不要看到详细的信息
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

"let Tlist_Ctags_Cmd = "/usr/bin/ctags-exuberant" " Location of my ctags
"let Tlist_Sort_Type = "name"         " order by
let Tlist_Use_Right_Window = 1        " split to the right side of the screen
let Tlist_Compart_Format = 1          " show small meny
let Tlist_File_Fold_Auto_Close = 0    " Do not close tags for other files
let Tlist_Enable_Fold_Column = 0      " Do not show folding tree

let Tlist_Show_One_File = 0             " 让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close = 1      " 非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow = 1           " 当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Process_File_Always=0         " 不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0                " 设为 0，防止 taglist 插件改变终端窗口的大小


"map <> :TlistToggle
map <F3> :silent! Tlist<CR>      "  按下F3就可以呼出了
" }


"********************************************************
" Latex suit 
"********************************************************
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
"let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
"let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
"let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
"let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode $*'
"let g:Tex_ViewRule_pdf = 'open -a Preview $*.pdf'
" }


"********************************************************
" Vim GDB Setting
"********************************************************
"syntax enable                      " enable syntax highlighting
"set previewheight=12               " set gdb window initial height
"run macros/gdb_mappings.vim        " source key mappings listed in this
"                                        " document
"set asm=0                          " don't show any assembly stuff
""set gdbprg=gdb_invocation          " set GDB invocation string (default 'gdb')
"set gdbprg=/usr/bin/gdb           " Must be Set in Macos and Ubuntu
"
"
"********************************************************
" NERDTree
"********************************************************
nmap <leader>e  :NERDTree<CR>


"********************************************************
" bufexplorer
"********************************************************


"********************************************************
" winmanager
"********************************************************
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
let g:winManagerWidth = 30    " 设置winmanager的宽度，默认为25
nmap <silent> <F8> :WMToggle<cr> " 定义打开关闭winmanager按键

let g:AutoOpenWinManager = 1 "在进入vim时自动打开winmanager


