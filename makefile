install:
	ln slate ~/.slate
	ln gitconfig ~/.gitconfig
	ln gitignore ~/.gitignore
	ln editorconfig ~/.editorconfig
	ln -s "`pwd`/git_hooks" ~/.git_hooks

clean:
	rm ~/.slate
	rm ~/.gitconfig
	rm ~/.gitignore
	rm ~/.editorconfig
	rm ~/.git_hooks

.PHONY: install
