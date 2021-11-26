## Personal Setup by kumarayush2104@github.com

all:
	sudo rm -rfv /usr/hla/
	sudo cp -rav hla* /usr/local/bin/
	sudo cp -rav include /usr/local/bin
	sudo cp -rav delete /usr/local/bin

## ending the setup

makeHLA:
	rm -f -R /usr/hla/hlalibsrc/*
	rm -f -R /usr/hla/include/*
	cp -R hlalibsrc/* /usr/hla/hlalibsrc
	cp -R include/* /usr/hla/include
	cd hlasrc; make -f makefile.linux
	cd /usr/hla/hlalibsrc; hla delete
	cd /usr/hla/hlalibsrc/mkMake; make -f makefile.unix; mkMake ; make clean
	cd /usr/hla/hlalibsrc; make; make clean
	tar cvf linux.tar /usr/hla/*
	rm -f linux.tar.gz
	gzip linux.tar
	cd /w/bsd; rm -f bsd.tar.gz; gzip bsd.tar

## Making uninstaller for hla_compiler
# By kumarayush2104


uninstall:
	sudo rm -rvf /usr/local/bin/hla*
	sudo rm -rvf /usr/local/bin/include
	sudo rm -rvf /usr/local/bin/delete

## ending the uninstaller










