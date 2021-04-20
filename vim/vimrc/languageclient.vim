


" LanguageClient adds extra language support to vim
if g:devtools_vimplug
	Plug 'reasonml-editor/vim-reason-plus'			" -- REASON
	
	if has('nvim')
		Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
	else
		"execute "source ~/.vim/autoload/nvim-yarp/autoload/yarp.vim"
		"execute "source ~/.vim/autoload/vim-hug-neovim-rpc/autoload/neovim_rpc.vim"

		Plug 'autozimu/LanguageClient-neovim'
	endif

	set hidden

	" load reason/ocaml language server
	let g:LanguageClient_serverCommands = {
			\ 'reason': ['ocaml-language-server', '--stdio'],
			\ 'ocaml': ['ocaml-language-server', '--stdio'],
			\ }

	let g:LanguageClient_autoStart=1

	" Plug 'autozimu/LanguageClient-neovim', {
	"     \ 'branch': 'next',
	"     \ 'do': 'bash install.sh',
	"     \ }

	" " load reason/ocaml language server
	" let g:LanguageClient_serverCommands = {
	" \  'kotlin': ["kotlin-language-server"]
	" \}

	" " 'reason': ['ocaml-language-server', '--stdio'],
	" " 'ocaml': ['ocaml-language-server', '--stdio'],
	" let g:LanguageClient_autoStart=1

	"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
	"nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
	"nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>

endif

