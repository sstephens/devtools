
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
if !has('nvim')
	call plug#begin('~/.vim/plugged')
else
	call plug#begin('~/.local/share/nvim/plugged')
endif

"
" --- Configurable Plugins --- 
"
call g:Importrc("languageclient.vim")					" include language client plugin
call g:Importrc("syntastic.vim")							" include syntastic plugin
call g:Importrc("completion.vim")							" include supertab completion plugin

Plug 'tpope/vim-fugitive'											" Ultimate git tool for vim

" -- include plugin
Plug 'ctrlpvim/ctrlp.vim'											" Ctrl-p vim plugin
let g:ctrlp_working_path_mode = ''						" Set ctrl-p working path
	
"Plug 'scrooloose/nerdtree'										" Tab opens a file browser left nav window
"nmap <C-i> :NERDTreeToggle<CR>								"	remap nerdtree open window key
"set winfixwidth															" keep window fixed for nerdtree

Plug 'editorconfig/editorconfig-vim'				" Editorconfig plugin
Plug 'jreybert/vimagit'											" git helper

"
" --- LANGUAGE SYNTAX PLUGINS ----
"
Plug 'reasonml-editor/vim-reason-plus'			" -- REASON

Plug 'udalov/kotlin-vim'										" -- KOTLIN
Plug 'rust-lang/rust.vim'										" -- RUST
Plug 'pangloss/vim-javascript'							" -- JAVASCRIPT
Plug 'jelera/vim-javascript-syntax'				  " -- JAVASCRIPT
Plug 'othree/yajs.vim'											" -- JAVASCRIPT
Plug 'mxw/vim-jsx'													" -- JAVASCRIPT MARKUP

if g:devtools_typescript
	Plug 'leafgarland/typescript-vim'						" -- TYPESCRIPT
	Plug 'mhartington/vim-typings'
	Plug 'Quramy/tsuquyomi'
endif

if g:devtools_flow
	Plug 'flowtype/vim-flow'										" Flow types
	let g:flow#enable=0
	let g:flow#autoclose=1
	let g:flow#errjmp=0
endif

Plug 'elzr/vim-json'												" -- JSON


Plug 'othree/html5.vim'											" -- HTML
Plug 'joukevandermaas/vim-ember-hbs'				" -- HANDLEBARS
Plug 'hail2u/vim-css3-syntax'								" -- CSS highlights
Plug 'cakebaker/scss-syntax.vim'						" -- SASS/SCSS highlights
Plug 'gcorne/vim-sass-lint'									" -- SASS/SCSS linting

"
" --- LANGUAGE LINT PLUGINS ----
"
Plug 'codenothing/jsonlint'									" -- JSON

"
" --- COLOR SCHEME PLUGINS ---
"
Plug 'altercation/vim-colors-solarized'			" -- solarized
Plug 'ajh17/Spacegray.vim'									" -- spacegray
Plug 'Heorhiy/VisualStudioDark.vim'					" -- vscode dark
Plug 'Badacadabra/vim-archery'							" -- archery
Plug 'nightsense/vimspectr'									" -- terminal vim colors

Plug 'vim-airline/vim-airline'							" -- Airline - status line plugin
Plug 'vim-airline/vim-airline-themes'				" -- Airline - themes

" Initialize plugin system
call plug#end()
