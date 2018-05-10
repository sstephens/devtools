
call NERDTreeAddKeyMap({
		\ 'key'						: '<CR>',
		\ 'callback'			: 'NERDTreeOpenTab',
		\ 'quickhelpText'	: 'default enter to open files in new tab',
		\ 'override'			: 1,
		\ 'scope'					: 'FileNode'})

function! NERDTreeOpenTab(node)
	call a:node.activate({'where': 't', 'reuse': 'all', 'keepopen': 1})
endfunction

call NERDTreeAddKeyMap({
		\ 'key'						: '<CR>',
		\ 'callback'			: 'NERDTreeOpenDir',
		\ 'quickhelpText'	: 'default enter to expand dirs',
		\ 'override'			: 1,
		\ 'scope'					: 'DirNode'})

function! NERDTreeOpenDir(node)
	call a:node.activate()
endfunction

