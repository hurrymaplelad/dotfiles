install:
	ln slate ~/.slate
	ln gitconfig ~/.gitconfig
	ln gitignore ~/.gitignore

clean:
	rm ~/.slate
	rm ~/.gitconfig
	rm ~/.gitignore

.PHONY: install