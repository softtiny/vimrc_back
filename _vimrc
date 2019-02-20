


let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
exec 'source '.s:path.'\vimfiles\autoload\plug.vim'
" set $PATHMYVIM to file papth
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(s:path.'/vimfiles/plugged')
Plug 'mattn/emmet-vim'
" Initialize plugin system
call plug#end()