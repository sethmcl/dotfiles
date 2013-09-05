#!/bin/bash
cd "$(dirname "$0")"
function doIt() {
  cp ~/.functions .
  cp ~/.zshrc .
  cp ~/.aliases .
  cp ~/.vimrc .
  git add .
  git commit -m "update"
  git push
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
