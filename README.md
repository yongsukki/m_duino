m_duino
=======

Multi-Duino : Simple Arduino for raspberrypi


pi@openmake ~ $ git clone https://github.com/rasplay/m_duino

pi@openmake ~ $ cd m_duino

pi@openmake ~ $ chmod 744 multi_duino.sh

pi@openmake ~ $ sudo ./multi_duino.sh

TIP : Atmga328P bootload upload shell command

pi@openmake ~ $ sudo avrdude -c gpio -p m328p -P /dev/spidev0.0 -U flash:w:/usr/share/arduino/hardware/arduino/bootloaders/atmega/ATmegaBOOT_168_atmega328.hex
