all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#File:guessinggame.sh" > README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	ls -l README.md  >> README.md  
	chmod a+x guessinggame.sh	
	
	
		        
