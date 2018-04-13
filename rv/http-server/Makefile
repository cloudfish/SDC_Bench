LD=ld

all: server

.PHONY: server
#all: examples/client.cc examples/server.cc
server: examples/server.cc
#	make -C ./build/ client
	make -C ./build/ server
#	cp ./build/out/Release/client ./client
	cp ./build/out/Release/server ./http-server

clean:
	rm -f server
	make clean -C ./build
