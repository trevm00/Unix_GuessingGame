all: README.md

README.md:guessinggame.sh
	echo "Unix Guessing Game Project" > README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md


