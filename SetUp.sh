echo 'apt-get update...'
apt-get update

echo 'Installing python-pip python-dev...'
apt-get install -y python3-pip python-pip python-dev wget
wget https://github.com/samjabrahams/tensorflow-on-raspberry-pi/releases/download/v1.1.0/tensorflow-1.1.0-cp27-none-linux_armv7l.whl


echo 'Installing Tensorflow through native pip...'
pip install tensorflow-1.1.0-cp27-none-linux_armv7l.whl

echo 'Installing I2C...'
apt-get install i2c-tools

echo 'Installing raspi-config..'
apt-get install raspi-config

echo 'dtparam=i2c1=on
      dtparam=i2c_arm=on' | sudo tee -a /boot/config.txt

echo 'Installing smbus2...'
pip3 install smbus2

echo 'Installing paho-mqtt...'
pip3 install paho-mqtt

echo 'Restart the RaspberryPi in 3 seconds...'
sleep(3)
reboot
