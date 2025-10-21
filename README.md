dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.


Requirements
------------
In order to build dwm, st, dmenu (st and dmenu is neccesary for dwm to give you basic functionalities like terminal and programs) you need the Xlib header files.
Also binaries installed like
- brightnessctl
- alsamixer and its related binaries

Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm, st and dmenu (if
necessary as root):

```
git clone https://github.com/Sanatani-Dhruv/dwm
cd dwm/
sudo make clean install
cd st/
sudo make clean install
cd ../
cd dmenu/
sudo make clean install
cd ../
cd dwmblocks/
sudo make install
cd ../
```

### or

```
git clone https://github.com/Sanatani-Dhruv/dwm
cd dwm/
make clean install
cd st/
make clean install
cd ../
cd dmenu/
make clean install
cd ../
cd dwmblocks/
make clean install
cd ../
```
Running dwm
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

```
while true
do
    xsetroot -name " $(date) | <Name of Distro> + DWM " && sleep 0.2
done &
```



Configuration
-------------
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
