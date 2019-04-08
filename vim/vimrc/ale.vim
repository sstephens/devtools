"
" ------------------ ale plugin -----------------------
"
if g:devtools_bundle
	" -- include plugin
	Plugin 'w0rp/ale'												" ale linter
else
	" -- include plugin
	Plug 'w0rp/ale'													" ale linter
endif

let g:ale_completion_enabled = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_list_window_size = 10
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
"let g:ale_open_list = 1

" -- faster error nav with ale
nmap <leader>= <Plug>(ale_next_wrap)
nmap <leader>+ <Plug>(ale_previous_wrap)
nmap <leader>af <Plug>(ale_fix)
nmap <leader>al <Plug>(ale_lint)
nmap <leader>ad <Plug>(ale_detail)
nmap <leader>ah <Plug>(ale_hover)
nmap <leader>ar <Plug>(ale_find_references)
nmap <leader>ag <Plug>(ale_go_to_definition)

" -- linters defs
let g:ale_linters = {
	\'javascript': ['eslint'],
	\'typescript': ['tslint', 'tsserver'],
\}

let g:ale_fixers = {
	\'javascript': ['eslint'],
	\'typescript': ['tslint'],
\}
