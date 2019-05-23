all: hello



hello: main.o factorial.o hello.o
	g++ main.o factorial.o hello.o -o ./bin/hello



main.o: main.cpp
	g++ -c main.cpp



factorial.o: factorial.cpp
	g++ -c factorial.cpp



hello.o: hello.cpp
	g++ -c hello.cpp



clean:
	rm -rf *.o hello

print: ./bin/hello
	ls -l ./bin && git describe --tags >> README.md



copy: README.md
	cp README.md ./bin/README.md


