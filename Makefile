all: cabal-build

.PHONY: cabal-build
cabal-build:
	cabal build

src/ppm.o: src/ppm.c include/ppm.h
	gcc -c $< -Wall -Wextra -I ./include -o $@

.PHONY: clean
clean:
	rm -f src/*.o
	rm -f src/*.chi
	rm -f src/*.chs.h
	rm -f src/Ppm.hs
