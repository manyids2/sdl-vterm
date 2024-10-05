.PHONY : build clean

build: vtermtest

vtermtest: vtermtest.cpp
	g++ -o vtermtest vtermtest.cpp  -lvterm -lutil -lSDL2 -lSDL2_ttf -licuuc \
		-Wall -Wextra -g

clean:
	rm vtermtest
