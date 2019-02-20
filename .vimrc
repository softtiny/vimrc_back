

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
exec 'source '.s:path.'/vimfiles/autoload/plug.vim'
exec 'source '.s:path.'/plugconfig/nerdtree'
" set $PATHMYVIM to file papth
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" https://github.com/junegunn/vim-plug
call plug#begin(s:path.'/vimfiles/plugged')
" https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'
" Initialize plugin system
call plug#end()