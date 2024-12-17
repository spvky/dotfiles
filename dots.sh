#! /bin/zsh

cd "$HOME/dotfiles"

if [ "$1" = "pull" ]; then
	git pull
	echo "dotfiles have been pulled"
elif [ "$1" = "push" ]; then
	git add .
	git commit -m $2
	git push
	echo "dotfiles have been pushed"
else
	echo "unrecognized command"
fi


