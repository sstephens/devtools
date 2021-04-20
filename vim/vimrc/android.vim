

if g:devtools_android
	Plugin 'hsanson/vim-android'

	if filereadable("./gradlew")
		let g:gradle_path = './gradlew'
	endif
		
	let g:android_sdk_path = '/Users/sstephen/Library/Android/sdk'

endif
