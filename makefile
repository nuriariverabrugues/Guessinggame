all: README.md

README.md: guessinggame.sh
	touch README.md
	
	echo "# Títle of the Project: Guessinggame" > README.md
	
	echo "## The number of code lines is:" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
	echo "## The creation date of README.md with makefile is:" >> README.md
	ls -l README.md  >> README.md  

	chmod a+x guessinggame.sh	
	
	
		        
