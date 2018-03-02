set nocompatible
filetype off

" ----------- LOAD BUNDLER PACKAGE -------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" ----------------------------------------------------

"
" --- Configurable Plugins --- 
"
call g:Importrc("nerdtree.vim")								" include nerdtree plugin
"call g:Importrc("ctrlp.vim")									" include ctrl-p plugin
call g:Importrc("syntastic.vim")							" include syntastic plugin
call g:Importrc("completion.vim")							" include supertab completion plugin

"
" --- VIM IMPROVEMENT PLUGINS ---
"
Plugin 'tpope/vim-fugitive'										" Ultimate git tool for vim
"Plugin 'scrooloose/nerdcommenter'						" Comment helper
Plugin 'editorconfig/editorconfig-vim'				" Editorconfig plugin
Plugin 'jreybert/vimagit'											" git helper
Plugin 'wincent/command-t'										" fuzzy navagation


"
" --- LANGUAGE SYNTAX PLUGINS ----
"
Plugin 'udalov/kotlin-vim'										" -- KOTLIN
Plugin 'rust-lang/rust.vim'										" -- RUST
Plugin 'leafgarland/typescript-vim'						" -- TYPESCRIPT
Plugin 'pangloss/vim-javascript'							" -- JAVASCRIPT
Plugin 'jelera/vim-javascript-syntax'				  " -- JAVASCRIPT
"Plugin 'othree/yajs.vim'											" -- JAVASCRIPT
Plugin 'elzr/vim-json'												" -- JSON
Plugin 'othree/html5.vim'											" -- HTML
Plugin 'joukevandermaas/vim-ember-hbs'				" -- HANDLEBARS
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



" ------------- END BUNDLER LOAD -------------
call vundle#end()
" --------------------------------------------
