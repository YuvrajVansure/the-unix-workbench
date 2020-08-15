#/usr/bin/env bash
all: README.md

README.md:
	echo '# [The Unix Workbench](https://www.coursera.org/learn/unix)' > README.md
	echo '- This README is generated using makefile' >> README.md
	echo '- makefile was ran at: $(shell date +%Y-%m-%d:%H:%M:%S)' >> README.md
	echo '- No. of lines guessinggame.sh : $(shell wc -l < guessinggame.sh)' >> README.md
	echo '- No. of lines makefile : $(shell wc -l < makefile)' >> README.md
	echo '- You can find course here [The Unix Workbench](https://www.coursera.org/learn/unix)' >> README.md

clean:
	rm README.md