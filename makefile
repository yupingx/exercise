README.md: guessinggame.sh
	echo Project for Unix Workbench Course: guessinggame\\ >> README.md
	echo This README file was last updated on: >> README.md
	date >> README.md
	echo \\ >> README.md
	echo Line count in guessinggame.sh: >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
