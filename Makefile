PROJECT_NAME := vtermtest

.PHONY: configure build clean

configure:
	@mkdir -p build
	cd build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=true -DCMAKE_BUILD_TYPE=Debug ..

build:
	cd build && make -j6

run:
	./build/$(PROJECT_NAME)

install:
	cd build && sudo make install

clean:
	-rm -r build
