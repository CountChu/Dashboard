clean:
	@if [ "$$(git rev-parse --abbrev-ref HEAD)" != main ]; then git branch -D main; fi
	git branch -m main

upload:
	git checkout --orphan clean-main
	git add .
	git commit -m 'Clean start'
	git branch -D main
	git branch -m main
	git push --force origin main