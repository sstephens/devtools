"
" ------------------ ale plugin -----------------------
"
if g:devtools_bundle
	" -- include plugin
	Plugin 'dense-analysis/ale'												" ale linter
else
	" -- include plugin
	Plug 'dense-analysis/ale'													" ale linter
endif

let g:ale_completion_enabled = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
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

if filereadable("./.eslintrc.js")
	let g:javascript_eslint_options = [ '--config ./.eslintrc.js' ]
endif

" -- linters defs
let g:ale_linters = {
	\'javascript': ['eslint'],
	\'javascriptreact': ['eslint'],
	\'javascript.jsx': ['eslint'],
	\'typescript': ['eslint', 'tsserver'],
	\'typescriptreact': ['eslint', 'tsserver'],
	\'typescript.tsx': ['eslint', 'tsserver'],
	\'xml': ['android'],
	\'groovy': ['android'],
	\'java': ['android', 'checkstyle', 'javalsp'],
	\'kotlin': ['android', 'ktlint', 'languageserver']
\}

let g:ale_fixers = {}

"   \'javascript': ['eslint'],
"   \'javascriptreact': ['eslint'],
"   \'javascript.jsx': ['eslint'],
"   \'typescript': ['eslint'],
"   \'typescriptreact': ['eslint'],
"   \'typescript.tsx': ['eslint'],
" \}

