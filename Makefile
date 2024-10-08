all: cabal-build

.PHONY: cabal-build
cabal-build:
	cabal build

src/ppm.o: src/ppm.c src/ppm.h
	gcc -c $< -Wall -Wextra -o $@

.PHONY: clean
clean:
	rm -f src/*.o
