install:
	ln slate ~/.slate
	ln gitconfig ~/.gitconfig
	ln gitignore ~/.gitignore
	ln editorconfig ~/.editorconfig

clean:
	rm ~/.slate
	rm ~/.gitconfig
	rm ~/.gitignore
	rm ~/.editorconfig

.PHONY: install