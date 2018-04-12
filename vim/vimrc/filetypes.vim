

"
" ------------ JavaScript section ---------------
"
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> console.log();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH<esc>FP2xi

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS									

autocmd BufRead,BufNewFile .flowconfig set filetype=config
autocmd BufRead,BufNewFile .editorconfig set filetype=config

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 

"
" ---------------------- CSS Section --------------------
"
autocmd FileType css set iskeyword+=-
autocmd FileType css set omnifunc=csscomplete#CompleteCSS		

"
" ---------------------- SASS Section --------------------
"
autocmd FileType sass set iskeyword+=-
autocmd FileType sass set omnifunc=csscomplete#CompleteCSS		
autocmd BufRead,BufNewFile *.scss set filetype=sass

"
" ------------------- Python section ---------------------
"
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#
