scriptencoding utf-8
" ============================================================================
" Author: zhaokefeng
" Version: v1.1.0
" Update Time: 2018-05-15
" ============================================================================
" Vundle initialization
" Avoid modify this section, unless you are very sure of what you are doing

" no vi-compatible
set nocompatible

" Setting up Vundle - the best vim plugin manager
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

" ============================================================================
" Install plugins the first time vim runs

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

" ============================================================================
" Vim settings and mappings
" You can edit them as you wish

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on
" syntax on
syntax enable
syntax on

set nu
set cindent
set smartindent
set nobackup
set t_Co=256
set background=dark  
colorscheme  molokai

"  private map key
"
nmap <leader>e :vsplit $MYVIMRC<CR>
imap jk <ESC>
inoremap { {}<ESC>i<CR><ESC>O
inoremap ( ()<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
