"
"  ███▄    █ ▓█████  ▒█████     ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒   ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ▓██  ▀█ ██▒▒███   ▒██░  ██▒   ██║   ██║██║██╔████╔██║██████╔╝██║     
" ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░   ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
" ▒██░   ▓██░░▒████▒░ ████▓▒░    ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
" ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░                                         
"    ░   ░ ░    ░   ░ ░ ░ ▒  
"          ░    ░  ░    ░ ░ 
" 
" =====================
" ==== Vim 系统配置    
" =====================
filetype on                                       " 开启文件类型检测
filetype plugin indent on                         " 开启特定的文件类型的插件和缩进
set fileencodings=utf-8,gb2312,gb18030,gbk        " 设置文件编码

set nocompatible                                  " 设置关闭有关vi一致性 
set clipboard=unnamed,unnamedplus                 " 设置系统粘贴板
set mouse=a                                       " 开启所有模式下的鼠标支持
set mousehide                                     " 输入文字时隐藏鼠标

exec "nohlsearch"
" ====
" ==== Vim UI 配置
" ====
syntax enable                                     " 使用语法高亮
syntax on                                         " 语法高亮
set t_Co=256                                      " 设置为256配色
set number                                        " 设置显示行号
set ruler                                         " 设置显示光标所在位置
set cmdheight=2                                   " 设置命令号高度为2
set laststatus=2                                  " 设置状态栏
set cursorline                                    " 设置显示光标所在行下划线
set guifont=SourceCodePro:h11                     " 设置字体和大小
" set relativenumber                              " 设置相对行号
set foldcolumn=0                                  " 设置代码折叠线宽度为0 

" ====
" ==== Vim 编辑设置
" ==== 
" Tab 配置
set expandtab                                     " 设置将 Tab 转换为 Space
set shiftwidth=4                                  " 设置 Tab 等于4个 Space
set tabstop=4                                     " 被建议如此设置
set softtabstop=4                                 " 被建议如此设置

" 缩进设置
set autoindent                                    " 新增的一行和前一行使用相同的缩进形式
set smartindent                                   " 同时可以识别{}，当遇到}时，取消缩进

" Backspace 配置
set backspace=indent,eol,start                    " 设置 backspace 的工作方式

" 搜索设置
set hlsearch                                      " 设置搜索高亮
set incsearch                                     " 设置边高亮边搜索
set ignorecase                                    " 设置搜索忽略大小写...
set smartcase                                     " ...除非含有大写字母

" 滚屏设置
set ttyfast                                       " 使屏幕滚动更快
set lazyredraw                                    " 同上

" 其他设置
set nrformats=bin                                 " 设置数字都为10进制
set nowrap                                        " 设置文字不显示换行
set showmatch                                     " 设置显示匹配的括号
set title                                         " 设置显示文件标题
set matchtime=2                                   " 设置显示匹配括号的时间位0.2秒
set wildmenu                                      " 设置命令模式 tab 键显示菜单
set shortmess+=c

" ====
" ==== Key-Mapping
" ====
let mapleader=" "                                 " 更改 Leader 键为 Space

" H 跳到行首
noremap H ^
" L 跳到行尾
noremap L $
" J 向下跳5行
noremap J 5j
" K 向上跳5行 
noremap K 5k

" <Space>-q => 退出当前窗口
noremap <silent><LEADER>q <esc>:q<CR>
" <Sapce>-Q => 退出所有窗口
noremap <silent><LEADER>Q <esc>:qa<CR>
" <Space>-w => 保存
noremap <LEADER>w :w<CR>
" <Space>-/ => 取消高亮
noremap <silent><LEADER>/ :nohlsearch<CR>

" <Sapce>-e => 打开文件导航栏
noremap <silent><LEADER>e :Defx<CR>
"
" 输入模式下jj => <ESC> 
inoremap jj <esc>

" 使搜索位于屏幕中心
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Window 管理
noremap <LEADER>w <C-w>w
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k
noremap <LEADER>l <C-w>l
noremap <LEADER>H <C-w>H
noremap <LEADER>J <C-w>J
noremap <LEADER>K <C-w>K
noremap <LEADER>L <C-w>L
" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <right> :vertical resize+5<CR>
noremap <left> :vertical resize-5<CR>

" Tab 管理
" 创建新 Tab
noremap tn :tabe<CR>
" 选择 Tab
noremap tj :-tabnext<CR>
noremap tk :+tabnext<CR>
" 移动 Tab
noremap tmj :-tabmove<CR>
noremap tmk :+tabmove<CR>

noremap <LEADER>t :set splitbelow<CR>:split<CR>:res +5<CR>:term<CR>

" ====================================
" ====    Vim-plug 插件管理配置   ====
" ====================================
call plug#begin('~/.config/nvim/plugged')
" 确保使用单引号

" 自动保存插件
Plug '907th/vim-auto-save'

" 使 vim 拥有256配色
Plug 'godlygeek/csapprox'

" coc.nvim 自动补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 彩虹括号匹配
Plug 'luochen1990/rainbow'

" 自动输入括号
Plug 'jiangmiao/auto-pairs'

" c++ 高亮插件
Plug 'octol/vim-cpp-enhanced-highlight'

" indeltline 缩进线插件
Plug 'yggdroot/indentline'

" markdown-preview md文件渲染
 Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" eleline status line
" Plug 'Held0n/eleline.vim'

" airline status line
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" buffer line
Plug 'bling/vim-bufferline'

"tabline
Plug 'mkitt/tabline.vim'

" vim-markdown-toc TOC生成插件
Plug 'mzlogin/vim-markdown-toc'

" sneak 快速跳转插件
Plug 'justinmk/vim-sneak'

" easymotion 
Plug 'Lokaltog/vim-easymotion'

" defx 文件导航插件
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'

" Dracula
Plug 'dracula/vim', { 'as': 'dracula' }

" 初始化插件系统 
call plug#end()

colorscheme dracula                               " 设置dracula主题

" ==============================================
" ====    vim-auto-save 自动保存插件配置    ====
" ==============================================

"开启 AutoSave 随 Vim 启动
let g:auto_save = 1 

" ================================
" ====    dracula 主题配置    ====
" ================================
" 取消斜体
let g:dracula_italic = 0

" =================================
" ====    coc.nvim 插件配置    ====
" =================================

" ====    coc.nvim 补全    ====
" 始终显示标志列，否则每次都会移动文本diagnostics appear/become resolved.
set signcolumn=yes                                

" 使用 Tab 键触发有字符的补全并导航
" 注意: 使用命令':verbose imap <tab>'确保 Tab 未使用，然后再将其放入配置中。
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>" 

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 使用回车确认补全
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <C-Space> :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" ================================
" ====    rainbow 彩虹括号    ====
" ================================
" 开启彩虹括号
let g:rainbow_active = 1

" ======================================================
" ====   vim-cpp-enhanced-highlight c++ 高亮插件    ==== 
" ======================================================
" 高亮 class scope
let g:cpp_class_scope_highlight = 1

" 高亮 member variable
let g:cpp_member_variable_highlight = 1

" 高亮 class names in declaration
let g:cpp_class_decl_highlight = 1

" =========================================
" ====    缩进线 indentline插件配置    ====
" =========================================
let g:indentLine_enabled = 0
" 设置缩进线的颜色 (7: silver)
let g:indentLine_color_term = 7

" 设置缩进线的样式
let g:indentLine_char = '▏'

" 设置显示缩进线的文件类型
let g:indentLine_fileType = ['c', 'cpp', 'rust']
let g:indentLine_fileTypeExclude = ['text', 'sh', 'vim', 'help', 'txt']
let g:vim_json_syntax_conceal = 0
" ========================================
" ====    markdown-preview插件配置    ====
" ========================================
" 关闭自动关闭preview
let g:mkdp_auto_close = 0

" =====================================
" ====    Defx 文件导航插件配置    ====
" =====================================
call defx#custom#option('_', {
      \ 'winwidth': 35,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ 'columns': 'mark:indent:icons:filename:type',
      \ })

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " o => 打开文件或文件夹
  nnoremap <silent><buffer><expr> o
  \ defx#is_directory() ?
  \ defx#do_action('open_or_close_tree') :
  \ defx#do_action('multi', ['drop', 'quit'])
  " l => 打开并进入文件或文件夹
  nnoremap <silent><buffer><expr> l
  \ defx#is_directory() ?
  \ defx#do_action('open_directory') :
  \ defx#do_action('multi', ['drop', 'quit'])
  " h => 返回上一级目录
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])

  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> v
  \ defx#do_action('multi', [['drop', 'vsplit'], 'quit'])
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')

  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> O
  \ defx#do_action('open_tree_recursive')

  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> J
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> #
  \ defx#do_action('clear_select_all')

  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction
autocmd BufWritePost * call defx#redraw()

" ===================================
" ====    airline status line    ====
" ===================================
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
" tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#keymap_ignored_filetypes =
    \ ['defx']
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z = '%3p%%%4l/%L'

" ===========================
" ====    buffer line    ====
" ===========================
let g:bufferline_echo = 0
" autocmd VimEnter *
" \ let &statusline='%{bufferline#refresh_status()}'
" \ .bufferline#get_status_string()
