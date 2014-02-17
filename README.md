m_duino
=======

Multi-Duino : Arduino for Simple raspberrypi

pi@openmake ~ $ sudo nano /boot/cmdine.txt

cotents delete :
console=ttyAMA0,115200 kgdboc=ttyAMA0,115200

pi@openmake ~ $ sudo nano /etc/inittab

front '#' add:
T0:23:respawn:/sbin/getty -L ttyAMA0 115200 vt100

pi@openmake ~ $ sudo nano /etc/udev/rules.d/85-paperduinopi.rules

write :
KERNEL=="ttyAMA0", SYMLINK+="ttyS0",GROUP="dialout",MODE:=0666


pi@openmake ~ $ sudo apt-get install git-core
pi@openmake ~ $ git clone https://github.com/rasplay/m_duino
pi@openmake ~ $ sudo ./multi_duino.sh

TIP : Atmga328P bootload upload command

reboot after :

pi@openmake ~ $ sudo avrdude -c gpio -p m328p -P /dev/spidev0.0 -U flash:w:/usr/share/arduino/hardware/arduino/bootloaders/optiboot/optiboot_atmega328.hex
