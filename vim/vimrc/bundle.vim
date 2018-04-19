set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if !has('nvim')
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin('~/.vim/bundle')
else
	set rtp+=~/.local/share/nvim/site/bundle/Vundle.vim
	call vundle#begin('~/.local/share/nvim/site/bundle')
endif

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" --- Configurable Plugins --- 
"
"call g:Importrc("languageclient.vim")					" include language client plugin (not working with vundle)
call g:Importrc("nerdtree.vim")								" include nerdtree plugin
call g:Importrc("syntastic.vim")							" include syntastic plugin
call g:Importrc("completion.vim")							" include supertab completion plugin

"
" --- VIM IMPROVEMENT PLUGINS ---
"
Plugin 'tpope/vim-fugitive'										" Ultimate git tool for vim

Plugin 'ctrlpvim/ctrlp.vim'										" Ctrl-p vim plugin
let g:ctrlp_working_path_mode = ''						" Set ctrl-p working path
	
"Plugin 'scrooloose/nerdtree'									" Tab opens a file browser left nav window
"nmap <C-i> :NERDTreeToggle<CR>								"	remap nerdtree open window key
"set winfixwidth															" keep window fixed for nerdtree

Plugin 'scrooloose/nerdcommenter'							" powerfull commenter

Plugin 'editorconfig/editorconfig-vim'				" Editorconfig plugin
"Plugin 'jreybert/vimagit'											" git helper
"Plugin 'wincent/command-t'										" fuzzy navagation

"
" --- LANGUAGE SYNTAX PLUGINS ----
"
"Plugin 'udalov/kotlin-vim'										" -- KOTLIN
"Plugin 'rust-lang/rust.vim'										" -- RUST
Plugin 'pangloss/vim-javascript'							" -- JAVASCRIPT
Plugin 'jelera/vim-javascript-syntax'				  " -- JAVASCRIPT
Plugin 'othree/yajs.vim'											" -- JAVASCRIPT
Plugin 'mxw/vim-jsx'													" -- JAVASCRIPT MARKUP

if g:devtools_typescript
	Plugin 'leafgarland/typescript-vim'						" -- TYPESCRIPT
	Plugin 'mhartington/vim-typings'
	Plugin 'Quramy/tsuquyomi'
endif

if g:devtools_flow
	Plugin 'flowtype/vim-flow'										" Flow types
	let g:flow#enable=0
	let g:flow#autoclose=1
	let g:flow#errjmp=0
endif

Plugin 'elzr/vim-json'												" -- JSON
Plugin 'othree/html5.vim'											" -- HTML
Plugin 'joukevandermaas/vim-ember-hbs'				" -- HANDLEBARS

"
" --- CSS SYNTAX AND STYLE ---
Plugin 'hail2u/vim-css3-syntax'								" -- CSS highlights
Plugin 'cakebaker/scss-syntax.vim'						" -- SASS/SCSS highlights
Plugin 'gcorne/vim-sass-lint'									" -- SASS/SCSS linting

"
" --- LANGUAGE LINT PLUGINS ----
"
Plugin 'codenothing/jsonlint'									" -- JSON

"
" --- COLOR SCHEME PLUGINS ---
"
Plugin 'altercation/vim-colors-solarized'			" -- solarized
Plugin 'ajh17/Spacegray.vim'									" -- spacegray
Plugin 'Heorhiy/VisualStudioDark.vim'					" -- vscode dark
Plugin 'Badacadabra/vim-archery'							" -- archery
Plugin 'nightsense/vimspectr'									" -- terminal vim colors

Plugin 'vim-airline/vim-airline'							" -- Airline - status line plugin
Plugin 'vim-airline/vim-airline-themes'				" -- Airline - themes

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
