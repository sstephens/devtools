"
" --- key mappings for quicker actions ---
"

" -- faster edit and reload of vimrc
map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost ~/.vimrc source ~/.vimrc

" -- comment block and uncomment with //
map <C-K> I//<Esc><Esc>
map <C-L> x<Esc><Esc>

" -- Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


" -- short hand code 
iab clog console.log(


" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>
cnoremap <C-P>		<Up>
cnoremap <C-N>		<Down>
