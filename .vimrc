set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'chrisbra/csv.vim'


call vundle#end()
filetype plugin indent on
syntax on
set number
set hlsearch
