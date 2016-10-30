set nocompatible              " required
filetype off                  " required

set encoding=utf-8
set nu
set clipboard=unnamed
set t_Co=256
set hlsearch

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_import = 0

Plugin 'vim-scripts/indentpython.vim'
" Bundle 'Valloric/YouCompleteMe'
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

Plugin 'jnurmine/Zenburn'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Fily type behaviour
"    \ set textwidth=79
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set filetype=unix

colorscheme zenburn

" Shortcuts
:imap <F5> <Esc>:w<CR>:!python %:p<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <space> za
set pastetoggle=<F2>
set nofoldenable    " disable folding

