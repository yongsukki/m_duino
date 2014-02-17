sudo apt-get update; sudo apt-get upgrade -y
wget http://project-downloads.drogon.net/gertboard/avrdude_5.10-4_armhf.deb
sudo dpkg -i avrdude_5.10-4_armhf.deb
sudo chmod 4755 /usr/bin/avrdude
sudo apt-get install -y arduino
wget http://project-downloads.drogon.net/gertboard/setup.sh
sudo sh ./setup.sh
sudo avrdude -p m328p -c gpio
