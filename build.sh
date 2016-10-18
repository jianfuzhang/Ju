
#!/bin/bash

platform='linux'
if [[ "$OSTYPE" == "darwin"* ]]; then
  platform='mac'
fi

if [[ $platform == 'mac' ]]; then
  brew install python3
else
  echo "====================================================================="
  echo "install pip:"
  echo "sudo apt-get install python-pip"
  sudo apt-get install python3-pip
fi

echo "====================================================================="
echo "make alias python=python3"
alias python=python3

echo "====================================================================="
echo "install virtualenv"
echo "sudo pip3 install virtualenv"
sudo pip3 install virtualenv

echo "====================================================================="
echo "setup virtual env:"
echo "virtualenv ENV"
virtual ENV
echo "source ENV/bin/activate"
source ENV/bin/activate

echo "====================================================================="
echo "install Django:"
echo "pip3 install Django"
pip3 install Django 

