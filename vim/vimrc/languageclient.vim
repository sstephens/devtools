
Plug 'reasonml-editor/vim-reason-plus'			" -- REASON


" LanguageClient adds extra language support to vim
if g:devtools_bundle
	if has('nvim')
		Plugin 'autozimu/LanguageClient-neovim'				
	else
		Plugin 'autozimu/LanguageClient-neovim'				
	endif
else 
	if has('nvim')
		Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
	else
		"execute "source ~/.vim/autoload/nvim-yarp/autoload/yarp.vim"
		"execute "source ~/.vim/autoload/vim-hug-neovim-rpc/autoload/neovim_rpc.vim"

		Plug 'autozimu/LanguageClient-neovim'
	endif
endif

set hidden

" load reason/ocaml language server
let g:LanguageClient_serverCommands = {
		\ 'reason': ['ocaml-language-server', '--stdio'],
		\ 'ocaml': ['ocaml-language-server', '--stdio'],
		\ }

let g:LanguageClient_autoStart=1

"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
"nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
"nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>

