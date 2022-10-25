syntax on " 支持語法高亮                                                                                                                                                                                                                                               [0/402]
let mapleader = ","
set number
set backspace=2 " 映射backspace, 適用於MAC
set laststatus=2 " 永遠開啟狀態列
set encoding=utf-8 " 支持utf8
set termencoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color " 支持256色
set t_Co=256
set noautoindent " 關閉自動縮排
set number " 開啟行數
set hlsearch " 高亮搜索
set incsearch " 開啟全域搜索
set ignorecase " 搜索無視大小寫
set cursorline " 高亮所在行
set expandtab " tab 轉為空格
set tabstop=2 " tab 輸出兩個空格
set mouse=a " 支持滑鼠
set wildmenu " 指令提示菜單
au BufRead,BufNewFile *.vue set filetype=html " 以html來對待vue

"-- 摺疊配置 --
set foldcolumn=1
set foldlevelstart=99
setlocal foldmethod=marker
setlocal foldmarker={,}
"nnoremap <Space> za " 使用空白件折疊
nnoremap <leader>c za " 使用空白件折疊

set nocompatible              " be iMproved, required
filetype off                  " required


map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'fatih/vim-go'
Plugin 'sebdah/vim-delve'
Plugin 'mattn/emmet-vim' " 快速插入html
Plugin 'tpope/vim-surround' " 快速包圍
Plugin 'chrisbra/Colorizer' " 顏色提示
Plugin 'scrooloose/nerdtree' " 樹形目錄
Plugin 'jistr/vim-nerdtree-tabs' " 樹型目錄強化
Plugin 'jiangmiao/auto-pairs' " 自動補全對稱符
Plugin 'mkitt/tabline.vim' " tab頁籤
Plugin 'itchyny/lightline.vim' " 下方狀態列表
Plugin 'scrooloose/nerdcommenter' " 快速註解
Plugin 'joshdick/onedark.vim' " vim 主題
Plugin 'Glench/Vim-Jinja2-Syntax' " python Jinja 模塊語法高亮
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
