
"let g:syntastic_debug=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" --- PHP ---
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']



" --- RUST ---
let g:syntastic_rust_checkers = ['cargo']



" --- YAML ---
let g:syntastic_jsyaml_checkers=["js-yaml"]



" --- JAVASCRIPT ---
let g:syntastic_javascript_checkers = ['eslint']

if filereadable("./.eslintrc.js")
	let g:syntastic_javascript_jshint_args = '--config ./.eslintrc.js'
else
	let g:syntastic_javascript_jshint_args = '--config ~/.eslintrc.js'
endif



" --- TYPESCRIPT ---
let g:syntastic_typescript_checkers = ['tslint']

if filereadable("./tslint.json")
	let g:syntastic_typescript_lint_args = '--config ./.tslint.json'
else
	let g:syntastic_typescript_lint_args = '--config ~/.tslint.json'
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