"It is essential that these lines are called before enabling filetype
"detection, so I would recommend putting them at the top of your vimrc file."
call pathogen#infect()
call pathogen#helptags()

set nocompatible              " be iMproved, required
filetype off                  " required

"Setters"
set modeline
set mouse=a
set smartcase
set hlsearch
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set guioptions=aegit

"Key mappings"
inoremap jk <ESC>

"Formatting"
"Highlight un-needed White Space"
highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /\s\+$/

"color stuff"
set background=dark
set t_Co=256
if &t_Co == 256
	colors lumberjack
	endif

	colorscheme lumberjack
