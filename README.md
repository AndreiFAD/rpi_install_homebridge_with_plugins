# rpi zero W install homebridge with plugins
rpi install homebridge with plugins (node v8)

plugins:

    sudo npm install -g homebridge-raspberrypi-temperature
    sudo npm install -g homebridge-gpio-device --unsafe-perm
    sudo npm install -g homebridge-dht-sensor --unsafe-perm
    sudo npm install -g homebridge-tradfri-plugin



sudo su

sudo wget -0 - https://raw.githubusercontent.com/AndreiFAD/rpi_install_homebridge_with_plugins/master/install.sh | bash


