README.md:
	echo "# Guessing Game Assignment" > README.md
	echo "## Time ran: $(shell date)" >> README.md
	echo "## Number of lines in guessinggame.sh: $(shell wc -l guessinggame.sh | grep -Eo "^[^ ]+" )" >> README.md
