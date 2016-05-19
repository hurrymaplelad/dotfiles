install:
	ln slate ~/.slate
	ln gitconfig ~/.gitconfig
	ln gitignore ~/.gitignore
	ln editorconfig ~/.editorconfig
	ln vimrc ~/.vimrc
	ln  zpreztorc ~/.zpreztorc
	ln  zshenv ~/.zshenv
	ln  zshrc ~/.zshrc
	ln  ~/.vimrc
	ln -s "`pwd`/zsh" ~/.zsh
	ln -s "`pwd`/git_hooks" ~/.git_hooks
	ln -s "`pwd`/atom" ~/.atom

clean:
	rm ~/.slate
	rm ~/.gitconfig
	rm ~/.gitignore
	rm ~/.editorconfig
	rm ~/.git_hooks

.PHONY: install
