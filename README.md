m_duino
=======

Multi-Duino : Arduino for Simple raspberrypi

pi@openmake ~ $ sudo nano /boot/cmdine.txt
내용삭제 : console=ttyAMA0,115200 kgdboc=ttyAMA0,115200

pi@openmake ~ $ sudo nano /etc/inittab
주석처리 : T0:23:respawn:/sbin/getty -L ttyAMA0 115200 vt100

pi@openmake ~ $ sudo nano /etc/udev/rules.d/85-paperduinopi.rules
작성내용 : KERNEL==“ttyAMA0”, SYMLINK+=“ttyS0”,GROUP=“dialout”,MODE:=0666

pi@openmake ~ $ sudo apt-get install git-core
pi@openmake ~ $ git clone https://github.com/rasplay/m_duino
pi@openmake ~ $ sudo ./multi_duino.sh
