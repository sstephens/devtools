#!/bin/sh

DIRNAME=$(pwd);

VIMPLUG=0
BUNDLE=0
ITERM=0
FORCE=0
TYPESCRIPT=0
FLOW=""
INC_FLOW=0

for var in "$@"
do
	if [ $var = 'vimplug' ] ; then
		VIMPLUG=1
	elif [ $var = "bundle" ] ; then
		BUNDLE=1
	elif [ $var = "iterm" ] ; then
		ITERM=1
	elif [ $var = "force" ] ; then
		FORCE=1
	elif [ $var = "typescript" ] ; then
		TYPESCRIPT=1
	elif [ $var = "flow" ] ; then
		FLOW=" flow-bin "
		INC_FLOW=1
	fi
done

echo "VIMPLUG: $VIMPLUG \n BUNDLE: $BUNDLE \n ITERM: $ITERM \n FlOW: $FLOW \n FORCE: $FORCE"

# create link for neovim to devtools
if [ $FORCE = 0 ] && [ -e ~/.config/nvim/init.bak ] ; then
echo "Config paths already set for neovim"
else
mv ~/.config/nvim/init.vim ~/.config/nvim/init.bak
echo "
let g:devtools_iterm2=$ITERM
let g:devtools_vimplug=$VIMPLUG
let g:devtools_bundle=$BUNDLE
let g:devtools_flow=$INC_FLOW
let g:devtools_typescript=$TYPESCRIPT

source $DIRNAME/vim/init.vim" >> ~/.config/nvim/init.vim
fi

# create link for neovim to devtools
if [ $FORCE = 0 ] && [ -e ~/.vimrc.bak ] ; then
echo "Config paths already set for vim"
else
mv ~/.vimrc ~/.vimrc.bak
echo "
let g:devtools_iterm2=$ITERM
let g:devtools_vimplug=$VIMPLUG
let g:devtools_bundle=$BUNDLE
let g:devtools_flow=$INC_FLOW
let g:devtools_typescript=$TYPESCRIPT

source $DIRNAME/vim/init.vim" >> ~/.vimrc
	
	rm -rf ~/.vim/plugin/nvim-yarp ~/.vim/plugin/vim-hug-neovim-rpc

	git clone https://github.com/roxma/nvim-yarp.git ~/.vim/plugin/nvim-yarp
	git clone https://github.com/roxma/vim-hug-neovim-rpc.git ~/.vim/plugin/vim-hug-neovim-rpc
fi

if [ $VIMPLUG = 1 ] ; then
	# install vim plug
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	# install neovim plug
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ $BUNDLE = 1 ] ; then 
	# install vim Vundle installer
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	#install neovim Vundle install
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.local/share/nvim/site/bundle/Vundle.vim
fi

# install global package deps
yarn global add eslint ocaml-language-server$FLOW
