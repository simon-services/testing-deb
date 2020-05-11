.PHONY: all
all: build 

build:
	mkdir tmp
	rsync -ax --exclude tmp ./ tmp/
	rm -rfv tmp/Makefile tmp/LICENSE tmp/README.md tmp/.gitignore tmp/.git
	dpkg-deb --build tmp testing-0.0.1-amd64.deb
	rm -rf tmp

.PHONY: clean 
clean:
	rm -fv *~ .*.swp *.deb
