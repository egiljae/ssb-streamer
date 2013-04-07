all: install

clean:
	rm /usr/local/bin/ssb-streamer

install: 
	cp -f ssb.conf $(HOME)/.ssb.conf
	cp -f squeezy.conf $(HOME)/.squeezy.conf
	cp -f ssb-streamer /usr/local/bin/
