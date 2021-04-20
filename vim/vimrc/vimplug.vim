
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
"call g:Importrc("languageclient.vim")				" include language client plugin (not working with vundle)
call g:Importrc("ctrlp.vim")									" include ctrl-p plugin
call g:Importrc("nerdtree.vim")								" include nerdtree plugin
call g:Importrc("ale.vim")										" include ale plugin
call g:Importrc("airline.vim")								" include airline plugin
call g:Importrc("fugitive.vim")								" include airline plugin
call g:Importrc("coc.vim")										" include airline plugin

"
" --- VIM IMPROVEMENT PLUGINS ---
" Plug 'ervandew/supertab'										" Supertab completion
Plug 'wincent/terminus'											" iterm vim improvements
" let g:SuperTabDefaultCompletionType = "<c-n>"

Plug 'machakann/vim-swap'										" vim swap delimited items
Plug 'editorconfig/editorconfig-vim'				" Editorconfig plugin

"
" --- LANGUAGE SYNTAX PLUGINS ----
"
Plug 'sheerun/vim-polyglot'										" multi lang syntax
Plug 'gcorne/vim-sass-lint'									" -- SASS/SCSS linting

"
" --- LANGUAGE LINT PLUGINS ----
Plug 'codenothing/jsonlint'									" -- JSON

"
" --- COLOR SCHEME PLUGINS ---
"
Plug 'altercation/vim-colors-solarized'			" -- solarized
Plug 'ajh17/Spacegray.vim'									" -- spacegray
Plug 'Heorhiy/VisualStudioDark.vim'					" -- vscode dark
Plug 'Badacadabra/vim-archery'							" -- archery
Plug 'nightsense/vimspectr'									" -- terminal vim colors

" Initialize plugin system
call plug#end()

