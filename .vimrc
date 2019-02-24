
" current vimrc parent folder path
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:rootTmpPath=s:path.'/tmp'

" backup
" If you want all the swap(.swp), backup(~) files in a separate folder say
exec  'set backupdir='.s:path.'/tmp/.backup/.'
exec  'set directory='.s:path.'/tmp/.backup/.'
"  List of directory names for undo files, separated with commas.
exec  'set undodir='.s:path.'/tmp/.backup'


exec 'source '.s:path.'/vimfiles/autoload/plug.vim'
if exists(':NERDtree')
	exec 'source '.s:path.'/plugconfig/nerdtree'
	exec 'source '.s:path.'/plugconfig/aireline_devicons_nerd_fonts'
	exec 'source '.s:path.'/plugconfig/YouCompleteMe'
	exec 'source '.s:path.'/common/config'
	exec 'source '.s:path.'/gvimconf/config'
	exec 'source '.s:path.'/winconf/config'
endif
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
" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plug 'ryanoasis/vim-devicons'
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" A code-completion engine for Vim
Plug 'Valloric/YouCompleteMe'

" Initialize plugin system
call plug#end() 
