set nocompatible
filetype off

" ----------- LOAD BUNDLER PACKAGE -------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" ----------------------------------------------------


"
" --- VIM IMPROVEMENT PLUGINS ---
"
"Plugin 'scrooloose/nerdtree'							" Tab opens a file browser left nav window
"nmap <C-i> :NERDTreeToggle<CR>						" remap nerdtree open window key
"set winfixwidth													" keep window fixed for nerdtree

"Plugin 'kien/ctrlp.vim'									" Ctrl-p vim plugin
"let g:ctrlp_working_path_mode = ''				" Set ctrl-p working path

Plugin 'tpope/vim-fugitive'								" Ultimate git tool for vim

"Plugin 'scrooloose/nerdcommenter'				" Comment helper

Plugin 'scrooloose/syntastic'							" Syntastic syntax helper

Plugin 'editorconfig/editorconfig-vim'		" Editorconfig plugin



"
" --- LANGUAGE SYNTAX PLUGINS ----
"
Plugin 'udalov/kotlin-vim'								" -- KOTLIN
Plugin 'rust-lang/rust.vim'								" -- RUST
"Plugin 'leafgarland/typescript-vim'			" -- TYPESCRIPT
"Plugin 'pangloss/vim-javascript'					" -- JAVASCRIPT
"Plugin 'jelera/vim-javascript-syntax'		" -- JAVASCRIPT
Plugin 'elzr/vim-json'										" -- JSON
"Plugin 'othree/html5.vim'								" -- HTML
Plugin 'joukevandermaas/vim-ember-hbs'		" -- HANDLEBARS
Plugin 'gcorne/vim-sass-lint'							" -- SASS/SCSS



"
" --- LANGUAGE LINT PLUGINS ----
"
Plugin 'codenothing/jsonlint'						" -- JSON



"
" --- COLOR SCHEME PLUGINS ---
"
Plugin 'altercation/vim-colors-solarized'  " -- SOLORIZED



" ------------- END BUNDLER LOAD -------------
call vundle#end()
" --------------------------------------------
