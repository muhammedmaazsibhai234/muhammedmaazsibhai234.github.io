all: README.md

README.md: guessinggame.sh
	echo "The Unix Workbench course assignment" > README.md
	echo "Descriptiion: make a program called *guessinggame.sh*. This program has been created by me" >> README.md
	echo -n "Make date: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md