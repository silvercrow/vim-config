" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentLine' 
Plug 'godlygeek/tabular'
Plug 'google/vim-searchindex'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'shougo/unite.vim'
Plug 'hdima/python-syntax'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'chiel92/vim-autoformat'
Plug 'tpope/vim-sensible'
Plug 'ericbn/vim-solarized'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'metakirby5/codi.vim'
Plug 'townk/vim-autoclose'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 't9md/vim-choosewin'
Plug 'pangloss/vim-javascript'
call plug#end()


let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
"let g:NERDTreeUseSimpleIndicator = 1

highlight! EndOfBuffer ctermbg=white ctermfg=white guibg=white guifg=white

"Syntastic conf
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" invoke with '-'
nmap  -  <Plug>(choosewin)

" if you want to use overlay feature
let g:choosewin_overlay_enable = 1


let g:AutoClosePreserveDotReg = 0
set nocompatible
"filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let g:codi#width = 50.0
set number
set numberwidth=2
highlight CursorLineNr gui=bold guifg=DarkRed guibg=#c0d0e0
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:indent_guides_enable_on_vim_startup = 1
set mouse=a
"au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()
set encoding=UTF-8
let python_highlight_all=1
syntax enable
set background=light
filetype plugin indent on

"Nerdtree on vim folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
colorscheme solarized
let g:airline_powerline_fonts = 1

"Tab Settings
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2


set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Copy and paste using control+c and control+v 
vnoremap <C-c> "+y
map <C-v> "+P


"Navigate between tabs
nnoremap <C-t> :tabnew<Space>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"Vim to normal
inoremap <C-x> <Esc>
cnoremap <C-x> <Esc>
"Hard Quit
inoremap <C-q><Esc> :q <cr>
nnoremap <C-q> :q <cr>
"Save 
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>

"Open NERDTREE on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

"Map NerdTree to Control+n
map <C-n> :NERDTreeToggle<CR>

"Basic file system commands
nnoremap <A-o> :!touch<Space>
nnoremap <A-e> :!crf<Space>
nnoremap <A-d> :!mkdir<Space>
nnoremap <A-m> :!mv<Space>

"Splits
set splitbelow splitright

"Find in open project
set path=.,,**

