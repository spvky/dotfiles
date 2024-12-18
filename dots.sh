#! /bin/zsh

cd "$HOME/dotfiles"

if [ "$1" = "pull" ]; then
	git pull
	echo "dotfiles have been pulled"
elif [ "$1" = "push" ]; then
	git add .
	if ["$2" = ""]; then
		git commit -m "Lazy Update $(date)"
	else
		git commit -m $2
	fi
	git push
	echo "dotfiles have been pushed"
else
	echo "unrecognized command"
fi


