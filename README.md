ssb-streamer
============

# What it does
SSB-streamer or SpotifySqueezeBox-streamer is a little script that easily
streams music from your local desktop machine, to a squeezebox enabled device. 
It redirects the spotify stream through gstreamer, starts icecast, 
and then broadcasts this stream via icecast. The script also sends
telnet commands to your local SqueezeBox server, which in turn starts playing
the icecast stream.

# Installation
1. Install required packages: icecast2 and squeezy.
Squeezy can be found here: https://code.google.com/p/squeezy/

2. Install ssb-steamer: make install
This copies ssb-streamer to /usr/local/bin

# Usage
ssb-streamer start|stop|clean|status

start: starts ssb-streamer

stop: stops ssb-streamer

clean: unloads all null-sink pulse modules

status: shows status of each component
