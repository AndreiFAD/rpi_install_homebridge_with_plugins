# rpi zero W install homebridge with plugins
rpi install homebridge with plugins (node v8)

kernel revert to 4.4.50!<br>
sudo rpi-update 52241088c1da59a359110d39c1875cda56496764 

plugins:

    homebridge-raspberrypi-temperature
    homebridge-gpio-device
    homebridge-dht-sensor
    homebridge-tradfri-plugin



pi@RpiZero:~ $ sudo su

root@RpiZero:/home/pi# sudo wget -0 - https://raw.githubusercontent.com/AndreiFAD/rpi_install_homebridge_with_plugins/master/install.sh | bash

root@RpiZero:/home/pi# sudo reboot

..

pi@RpiZero:~ $ sudo su

root@RpiZero:/home/pi# homebridge

root@RpiZero:/home/pi# sudo nano /root/.homebridge/config.json

