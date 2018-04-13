
execute "set runtimepath=".&runtimepath.",".$HOME."/devtools/vim"
"execute "set runtimepath=".$HOME."/devtools/vim,".&runtimepath

" -- MAP LEADER -- "
let mapleader = "\\"
let g:mapleader = "\\"

set encoding=utf-8																" use UTF-8 file encoding
set pyxversion=3

" ---------- GLOBAl DECLARATIONS --------- "
let g:devtools_path = get(g:, 'devtools_path', "~/devtools")				" set devtools vim directory
let g:devtools_bundle = get(g:, 'devtools_bundle', 1)								" include Vundle bundler package
let g:devtools_iterm2 = get(g:, 'devtools_iterm2', 0)								" terminal preference for mac users
function! g:Importrc(name)																					" import rc file method
	execute "source ".g:devtools_path."/vim/vimrc/".a:name
endfunction



" ----------- IMPORT PLUGINS ------------ "
if g:devtools_bundle	
	call Importrc("plugins.vim")																			" include bundle packages
endif


if has("mac")																												
	call Importrc("terminal.vim")																			" Terminal settings for mac
endif

if !exists("g:syntax_on")																						" Turn on syntax highlighting
	syntax enable
endif

call Importrc("interface.vim")																			" interface settings
call Importrc("codestyle.vim")																			" code style helpers 
call Importrc("filetypes.vim")																			" file type specific settings
call Importrc("mappings.vim")																				" mappings

let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

"set rtp+=/usr/local/opt/fzf																					" enable fuzzy finder
