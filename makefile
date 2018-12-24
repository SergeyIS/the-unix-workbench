all: build
build: guessinggame.sh
	echo "The Unix Workbench final project" > README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md
