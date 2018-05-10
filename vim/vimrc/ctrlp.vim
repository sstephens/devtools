"
" ------------------ ctrl-p plugin -----------------------
"
if g:devtools_bundle
	" -- include plugin
	Plugin 'ctrlpvim/ctrlp.vim'								" Ctrl-p vim plugin
else
	" -- include plugin
	Plug 'ctrlpvim/ctrlp.vim'								" Ctrl-p vim plugin
endif

" -- set plugin options
let g:ctrlp_working_path_mode = 'r'			" Set ctrl-p working path
let g:ctrlp_map = '<leader>p'
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'
let g:ctrlp_tabpage_position = 'ac'
  
let g:ctrlp_prompt_mappings = {
	\ 'PrtBS()':              ['<bs>', '<c-]>'],
	\ 'PrtDelete()':          ['<del>'],
	\ 'PrtDeleteWord()':      ['<c-w>'],
	\ 'PrtClear()':           ['<c-u>'],
	\ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
	\ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
	\ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
	\ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
	\ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
	\ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
	\ 'PrtHistory(-1)':       ['<c-n>'],
	\ 'PrtHistory(1)':        ['<c-p>'],
	\ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
	\ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
	\ 'AcceptSelection("e")': ['<c-t>'],
	\ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
	\ 'ToggleFocus()':        ['<s-tab>'],
	\ 'ToggleRegex()':        ['<c-r>'],
	\ 'ToggleByFname()':      ['<c-d>'],
	\ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
	\ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
	\ 'PrtExpandDir()':       ['<tab>'],
	\ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
	\ 'PrtInsert()':          ['<c-\>'],
	\ 'PrtCurStart()':        ['<c-a>'],
	\ 'PrtCurEnd()':          ['<c-e>'],
	\ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
	\ 'PrtCurRight()':        ['<c-l>', '<right>'],
	\ 'PrtClearCache()':      ['<F5>'],
	\ 'PrtDeleteEnt()':       ['<F7>'],
	\ 'CreateNewFile()':      ['<c-y>'],
	\ 'MarkToOpen()':         ['<c-z>'],
	\ 'OpenMulti()':          ['<c-o>'],
	\ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
\ }
