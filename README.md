# rpi zero W install homebridge with plugins
rpi install homebridge with plugins (node v8)

plugins:

    sudo npm install -g homebridge-raspberrypi-temperature
    sudo npm install -g homebridge-gpio-device --unsafe-perm
    sudo npm install -g homebridge-dht-sensor --unsafe-perm
    sudo npm install -g homebridge-tradfri-plugin



pi@RpiZero:~ $ sudo su

root@RpiZero:/home/pi# sudo wget -0 - https://raw.githubusercontent.com/AndreiFAD/rpi_install_homebridge_with_plugins/master/install.sh | bash

sudo reboot

root@RpiZero:/home/pi# sudo reboot

..

pi@RpiZero:~ $ sudo su

root@RpiZero:/home/pi# homebridge

root@RpiZero:/home/pi# sudo nano /root/.homebridge/config.json

