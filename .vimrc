"  .vimrc document example
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set cursorline
syntax enable
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
call plug#begin('~/.config/nvim/plugged')

" Themes "
Plug 'morhetz/gruvbox'
Plug 'kyoz/purify', { 'rtp': 'vim' }
"Plug 'rakr/vim-one'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
  "Navegar entre ventanas
Plug 'christoomey/vim-tmux-navigator'
"Eslint
Plug 'dense-analysis/ale'
"The React syntax highlighting .
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
"JavaScript bundle for vim
Plug 'pangloss/vim-javascript'
"Snippers"
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
"" Snippets Import/export
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
      Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
          Plug 'roxma/vim-hug-neovim-rpc'
        endif
        let g:deoplete#enable_at_startup = 1


call plug#end()
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"colorscheme purify

""let g:NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<cr>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
imap jj <Esc>
nmap <Leader>nn :NERDTreeToggle<CR>
"setters ale
""Set eslint as plugging manager
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

""let g:ale_fix_on_save = 1

"" Set javascript syntax highlighting from pangloss
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"" snipper vim
let g:UltiSnipsExpandTrigger="<tab>"               
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetDirectories=['~/.vim/ultiSnips']
