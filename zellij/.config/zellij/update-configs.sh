#!/bin/zsh
mv ~/.config/zellij/config.kdl ~/.config/zellij/old-config.kdl
zellij setup --dump-config > ~/.config/zellij/config.kdl
