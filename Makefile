all: 
	(cd emacs; make)
	(cd zsh; make)
	(cd tmux; make)
keybrd:
	(cd keymap; make)