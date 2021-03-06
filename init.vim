" Plugin manager
" Automatic install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " UI
  Plug 'hzchirs/vim-material'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-fugitive'
  Plug 'majutsushi/tagbar'
  Plug 'ryanoasis/vim-devicons'
  " Auto Completion
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  " Syntax
  Plug 'w0rp/ale'
  Plug 'sheerun/vim-polyglot'
  " Tools
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'Shougo/denite.nvim', {'do' : ':UpdateRemotePlugins'}
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'gko/vim-coloresque'
  Plug 'itchyny/calendar.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
" End Plugin manager

" Configuration source
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/theme.vim
source ~/.config/nvim/config/plugins.vim
