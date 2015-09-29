" https://www.digitalocean.com/community/tutorials/how-to-use-vundle-to-manage-vim-plugins-on-a-linux-vps
" We also want to turn off the default "filetype" controls for now
" because the way that vim caches filetype rules at runtime
" interferes with the way that vundle alters the runtime environment.
" We will change this back later:
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
" Plugin 'Buffergator'

Plugin 'Tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline'
Plugin 'tpope/vim-fugitive'


" All plugins need be added bfefore this line
" Now we can turn our filetype functionality back on
filetype plugin indent on

" needed for persistant airline bar
set laststatus=2
function! s:tagbar_integration()
	" statusline tells you what fuinction you are in
endfunction
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" Settings
set number
set relativenumber
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartcase
set background=dark
set mouse=a
colorscheme gruvbox
syntax on

" Key Maps
inoremap jk <ESC>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Formatting
highlight BadWhitespace ctermbg=red
match BadWhitespace /\s\+$/
