set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
Plugin 'dawikur/algorithm-mnemonics.vim'
"Plugin 'ervandew/supertab'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'lervag/vimtex'
Plugin 'tpope/vim-jdaddy'
" All of your Plugins must be added before the following line
call vundle#end()            " required

"let g:airline_powerline_fonts = 1
"let g:airline_theme='dark'
"let g:airline_solarized_bg='dark'
"let g:Powerline_theme='short'
"let g:Powerline_colorscheme='solarized256_dark'
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
set showtabline=2
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
"set t_Co=256
"let g:solarized_termcolors=256
"let g:Powerlines_symbols='fancy'

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_confirm_extra_conf = 0

let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType='<C-n>'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

let g:vimtex_view_method='mupdf'

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
  let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

map <C-F> :YcmCompleter FixIt<CR>

map <C-K> :py3file ~/clang-format.py<cr>
imap <C-K> <c-o>:py3file ~/clang-format.py<cr>

set tabstop=4
set shiftwidth=4
set number relativenumber
syntax enable 
set background=dark
colorscheme gruvbox

" not sure if I want this
"set autoread

":highlight MySTDShader ctermfg=green
":match MySTDShader /std::/

