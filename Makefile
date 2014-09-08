all:
	echo "What you want?"
simple:
	(cd emacs; make)
	(cd zsh; make)
	(cd tmux; make)
noHhkb:
	(cd keymap; make)
dorm: simple
	(cd ssh; make)
