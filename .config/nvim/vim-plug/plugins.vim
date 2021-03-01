" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    Plug 'rking/ag.vim'
    Plug 'mhinz/vim-startify'
    " Nord theme https://www.nordtheme.com
    Plug 'arcticicestudio/nord-vim'
    " Airline 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Check syntax in Vim
    "Plug 'dense-analysis/ale'
   " Plug 'Chiel92/vim-autoformat'
    "Haskell Formatting
    Plug 'sdiehl/vim-ormolu'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'liuchengxu/vista.vim'
    "Racket support
    Plug 'wlangstroth/vim-racket'
    "Ranger file manager
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    "fzf https://www.chrisatmachine.com/Neovim/08-fzf/
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " colorizer    
    Plug 'norcalli/nvim-colorizer.lua'
call plug#end()


" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

colorscheme nord


