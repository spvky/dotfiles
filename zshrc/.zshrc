if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias wrun="cargo watch -q -c -w src/ -x run"
alias wtest="cargo watch -q -c -w test/ -x run"
alias vi3="nvim ~/.config/i3/config"
alias vizsh="nvim ~/.zshrc"
alias vinit="nvim ~/.config/nvim/init.lua"
alias zsource="source ~/.zshrc"
alias winbuild="cargo build --release --target x86_64-pc-windows-gnu"
alias ginfo="onefetch"
alias glog="git log --oneline"
alias ppatnh="tr ':' '\\n' <<< $PATH"
alias ptricks="flatpak run com.github.Matoking.protontricks"
alias ps1="~/Emulation/PS1/DuckStation-x64.AppImage"
alias ps2="~/Emulation/PS2/pcsx2-v1.7.5430-linux-appimage-x64-Qt.AppImage"
alias snes="flatpak run com.snes9x.Snes9x"
alias zola="flatpak run org.getzola.zola"
alias zr="zig build run"
alias zt="zig build test"
alias zb="zig build"

export ZSH="$HOME/.oh-my-zsh"
export DENO_INSTALL="/home/spooky/.deno"
export SOME_SHIT="SOME FUC KIN SHIT"
export FLYCTL_INSTALL="/home/spooky/.fly"
export BARTIB_FILE="/home/spooky/activities.bartib"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/spooky/.local/bin

function docs () {
	firefox --new-window docs.rs/$1
}

function dots () {
	cd "$HOME/dotfiles"
	if [ "$1" = "pull" ]; then
		git pull
		source ./zshrc/.zshrc
		echo "dotfiles have been pulled"
	elif [ "$1" = "push" ]; then
		git add .
		if [ "$2" = "" ]; then
			git commit -m "Lazy Update $(date)"
		else
			git commit -m $2
		fi
		git push
		echo "dotfiles have been pushed"
	elif [ "$1" = "edit" ]; then
		nvim
	else
		echo "unrecognized command"
	fi
	cd -
}

function notes () {
	cd "$HOME/notes"
	if [ "$1" = "pull" ]; then
		git pull
		echo "notes have been pulled"
	elif [ "$1" = "push" ]; then
		git add .
		if [ "$2" = "" ]; then
			git commit -m "Lazy Update $(date)"
		else
			git commit -m $2
		fi
		git push
		echo "notes have been pushed"
	elif [ "$1" = "edit" ]; then
		nvim
	else
		echo "unrecognized command"
	fi
	cd -
}

function gac () {
	message=\""$@"\"
	git add -A && git commit -a -m "$message"
}
eval "$(zoxide init zsh)"

ZSH_THEME="robbyrussell"

plugins=(git)
plugins=(asdf)
# source $ZSH/oh-my-zsh.sh

source ~/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# nvim <C-t> opens fuzy finder for opening a file in vim
# cd ** <Tab> opens fuzzy finder for directories
# kill -9 ** <Tab> opens fuzzy finder for running processes to kill
# ssh ** <Tab> opens fuzzy finder for recent ssh connections
# <C-r> fuzzy find command history
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/powerlevel10k/powerlevel10k.zsh-theme

. "$HOME/.limbo/env"
