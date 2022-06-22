NBL := $(shell wc -l < guessinggame.sh)
CD := $(shell date)

all:\
		README.md
	@echo "README.md generated"


README.md:
	@echo "# Project 'Guess file number in a directory'\n" > README.md
	@echo "_README.md_ generated on $(CD)\n" >> README.md
	@echo "type: __bash guessinggame.sh__ to play. (its sourcecode is $(NBL) lines long) \n" >> README.md;
