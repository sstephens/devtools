"
" -------------- SYNTASTIC SYNTAX HIGHLIGHT AND LINTER -------------- "
"
"

" -- include syntastic plugin
if g:devtools_bundle
	Plugin 'vim-syntastic/syntastic'
else
	Plug 'vim-syntastic/syntastic'
endif

let g:syntastic_filetype_map = { "javascript.jsx": "javascript" }

" -- set syntastic options
let g:syntastic_debug = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_signs = 1

let g:syntastic_aggregate_errors = 1


" --- PHP ---
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']



" --- RUST ---
let g:syntastic_rust_checkers = ['cargo']


" --- Kotlin ---
let g:syntastic_kotlin_checkers = ['ktlint']



" --- YAML ---
let g:syntastic_jsyaml_checkers=["js-yaml"]



" --- JAVASCRIPT ---
if g:devtools_flow
	let g:syntastic_javascript_checkers = ['eslint', 'flow']
else
	let g:syntastic_javascript_checkers = ['eslint']
endif

let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
endif

if filereadable("./.eslintrc.js")
	let g:syntastic_javascript_eslint_args = '--config ./.eslintrc.js'
else
	let g:syntastic_javascript_eslint_args = '--config ~/.eslintrc.js'
endif



" --- TYPESCRIPT ---
if g:devtools_typescript
	let g:tsuquyomi_disable_quickfix = 1

	let g:syntastic_typescript_checkers = ['tslint']
	if filereadable("./tslint.json")
		let g:syntastic_typescript_lint_args = '--config ./tslint.json'
	else
		let g:syntastic_typescript_lint_args = '--config ~/.tslint.json'
	endif
endif

" --- SASS/SCSS ---
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]

if filereadable("./.sass-lint.yml")
	let g:syntastic_scss_sass_lint_args = '--config ./.sass-lint.yml'
	let g:syntastic_sass_sass_lint_args = '--config ./.sass-lint.yml'
else
	let g:syntastic_scss_sass_lint_args = '--config ~/.sass-lint.yml'
	let g:syntastic_sass_sass_lint_args = '--config ~/.sass-lint.yml'
endif

" key mappings
"
map <leader>n :lnext<CR>
map <leader>p :lp<CR>
