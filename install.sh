#sudo su

#sudo rm instl.sh
#sudo nano instl.sh
#sudo sh instl.sh

#https://nodejs.org/dist/v6.11.3/node-v6.11.3-linux-armv6l.tar.xz

#RPI ARMv8 homebridge install with node 8.x with 2017-08-16-raspbian-stretch.img
#!/bin/bash
# By FAD homebridge install

cd /home/pi
echo "apt-get update files..."
sudo apt-get update
echo "remove nodejs nodejs-legacy files..."
sudo apt-get remove -y nodejs nodejs-legacy
echo "install dependence files..."
sudo apt-get install -y git make
sudo apt-get install -y git-core libnss-mdns libavahi-compat-libdnssd-dev
echo "downloads node v8.5 files..."

wget https://nodejs.org/dist/v8.5.0/node-v8.5.0-linux-armv6l.tar.xz
tar xJvf node-v8.5.0-linux-armv6l.tar.xz
sudo mkdir -p /opt/node
sudo mv node-v8.5.0-linux-armv6l/* /opt/node/
sudo update-alternatives --install "/usr/bin/node" "node" "/opt/node/bin/node" 1
sudo update-alternatives --install "/usr/bin/npm" "npm" "/opt/node/bin/npm" 1

sudo apt-get install nodejs -y
sudo npm install -g node-gyp
sudo npm install -g n
sudo n lts
sudo apt-get install build-essential -y
sudo npm install -g homebridge hap-nodejs node-gyp --unsafe-perm 
echo ""
echo "install packege for plugins"
sudo apt-get install libtool git build-essential autoconf automake -y 
sudo git clone --recursive https://github.com/obgm/libcoap.git
cd libcoap
sudo git checkout dtls
sudo git submodule update --init --recursive
sudo ./autogen.sh
sudo ./configure --disable-documentation --disable-shared
sudo make
sudo make install
cd /home/pi
echo ""
sudo wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.50.tar.gz
sudo tar xvfz bcm2835-1.50.tar.gz
cd bcm2835-1.50
sudo ./configure
sudo make
sudo make install
cd /home/pi
echo ""
echo "install homebridge plugins"
sudo npm install -g homebridge-raspberrypi-temperature
sudo npm install -g homebridge-gpio-device --unsafe-perm
sudo npm install -g homebridge-dht-sensor --unsafe-perm
sudo npm install -g homebridge-tradfri-plugin
echo ""
echo ""
echo "iam ready..enjoy!! :) "
echo ""
echo "node version:"
node -v
echo ""
echo "npm version:"
npm -v
echo ""
