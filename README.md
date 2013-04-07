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
1. Install required packages: icecast2, curl and squeezy.
Squeezy can be found here: https://code.google.com/p/squeezy/

In addition to these, ssb-streamer also uses the following tools:
* netcat
* pavucontrol
* pactl

2. Copy sample configuration files, ssb.conf.sample to ssb.conf,
   squeezy.conf.sample to squeezy.conf, and edit these to suit your setup.

3. Install ssb-steamer: make install
This copies ssb-streamer to /usr/local/bin
It also copies configuration files (ssb.conf, squeezy.conf) to your home folder.

* Note
Icecast will run as the current user, it does not need to be started as a
service.

# Usage
ssb-streamer start|stop|clean|status

start: starts ssb-streamer

stop: stops ssb-streamer

clean: unloads all null-sink pulse modules

status: shows status of each component

* Note
Sometimes it will be neccesary to manually choose "Null Output" in pavucontrol
if spotify is still playing off desktop machine, after ssb-streamer has started.
