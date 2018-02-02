
" ------ GLOBAl DECLARATIONS ------- "

" -- include declarations
let g:devtools_bundle = get(g:, 'devtools_bundle', 0)			" include Vundle bundler package
let g:devtools_vundle = get(g:, 'devtools_vundle', 0)			"	include Vundle bundler package

" -- terminal preference for mac users
let g:devtools_iterm2 = get(g:, 'devtools_iterm2', 0)

" -- language preferences
let g:devtools_javascript = get(g:, 'devtools_javascript', 0)


" ------- MAIN --------- "

" -- include bundle packages
if g:use_bundle || g:use_vundle
	" Load Bundle Packages -- THIS MUST LOAD FIRST
	source ~/devtools/vim/vimrc/plugins.vim

	" Syntax Checkers -- LOAD BEFORE SYNTAX ON CALL
	source ~/devtools/vim/vimrc/syntastic.vim
endif

" -- mapleader
let mapleader = "\\"

" -- Turn on syntax for filetypes
filetype plugin indent on													" filetype syntax and indentation
if has("mac") 
	source ~/devtools/vim/vimrc/terminal.vim				" macos better terminal colors
endif		
syntax on																					" syntax highlighter on
