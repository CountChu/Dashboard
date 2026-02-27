clean:
	git branch -D main
	git branch -m main

upload:
	git checkout --orphan clean-main
	git add .
	git commit -m 'Clean start'
	git branch -D main
	git branch -m main
	git push --force origin main