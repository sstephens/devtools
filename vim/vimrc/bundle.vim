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

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"
" --- Configurable Plugins --- 
"
"call g:Importrc("languageclient.vim")					" include language client plugin (not working with vundle)
call g:Importrc("ctrlp.vim")									" include ctrl-p plugin
call g:Importrc("nerdtree.vim")								" include nerdtree plugin
"call g:Importrc("syntastic.vim")							" include syntastic plugin
"call g:Importrc("completion.vim")							" include supertab completion plugin

"
" --- VIM IMPROVEMENT PLUGINS ---
Plugin 'atom/fuzzy-finder'										" atom fuzzy finder
Plugin 'ervandew/supertab'										" Supertab completion
Plugin 'wincent/terminus'											" iterm vim improvements
let g:SuperTabDefaultCompletionType = "<c-n>"

Plugin 'machakann/vim-swap'										" vim swap delimited items

Plugin 'editorconfig/editorconfig-vim'				" Editorconfig plugin
Plugin 'tpope/vim-fugitive'										" Ultimate git tool for vim
Plugin 'w0rp/ale'															" ale linter
let g:ale_completion_enabled = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
"let g:ale_list_window_size = 10
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
"let g:ale_open_list = 1

let g:ale_linters = {
	\'javascript': ['eslint'],
	\'typescript': ['tslint', 'tsserver'],
\}

"
" --- LANGUAGE SYNTAX PLUGINS ----
Plugin 'pangloss/vim-javascript'							" -- JAVASCRIPT
Plugin 'jelera/vim-javascript-syntax'				  " -- JAVASCRIPT
Plugin 'othree/yajs.vim'											" -- JAVASCRIPT
Plugin 'mxw/vim-jsx'													" -- JAVASCRIPT MARKUP

if g:devtools_typescript
	Plugin 'HerringtonDarkholme/yats.vim'				" -- TYPESCRIPT
	"Plugin 'leafgarland/typescript-vim'						
	"let g:typescript_compiler_binary = 'tsc'
	"let g:typescript_compiler_options = '--project ./'
	"Plugin 'ianks/vim-tsx'

	"Plugin 'peitalin/vim-jsx-typescript'
	" Plugin 'mhartington/vim-typings'
	" Plugin 'Quramy/tsuquyomi'
endif

" if g:devtools_flow
"   Plugin 'flowtype/vim-flow'										" Flow types
"   let g:flow#enable=0
"   let g:flow#autoclose=1
"   let g:flow#errjmp=0
" endif

Plugin 'elzr/vim-json'												" -- JSON
Plugin 'othree/html5.vim'											" -- HTML
"Plugin 'joukevandermaas/vim-ember-hbs'				" -- HANDLEBARS

"
" --- CSS SYNTAX AND STYLE ---
Plugin 'hail2u/vim-css3-syntax'								" -- CSS highlights
Plugin 'cakebaker/scss-syntax.vim'						" -- SASS/SCSS highlights
Plugin 'gcorne/vim-sass-lint'									" -- SASS/SCSS linting

"
" --- LANGUAGE LINT PLUGINS ----
Plugin 'codenothing/jsonlint'									" -- JSON

"
" --- KOTLIN PLUGINS ----
"
"Plugin 'udalov/kotlin-vim'										" -- KOTLIN
"let g:ale_kotlin_kotlinc_options="--android"
"let g:ale_kotlin_ktlint_executable="ktlint --android"

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
"

"
" --- OTHER PLUGINS NOT USED ---
"
"Plugin 'jreybert/vimagit'										" git helper
"Plugin 'rust-lang/rust.vim'									" -- RUST
"Plugin 'dart-lang/dart-vim-plugin'						" -- DART LANG
