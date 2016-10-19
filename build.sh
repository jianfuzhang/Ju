
#!/bin/bash

platform='linux'
if [[ "$OSTYPE" == "darwin"* ]]; then
  platform='mac'
elif [[ $(cat /etc/issue) == "Amazon Linux AMI"* ]]; then
  platform='amz_linux'
fi

echo "====================================================================="
echo "install python3 and pip3:"
if [[ $platform == 'mac' ]]; then
  echo "brew install python3"
  brew install python3
elif [[ $platform == 'amz_linux' ]]; then
  echo "sudo yum install python35"
  sudo yum install python35

  echo "sudo easy_install-3.5 pip"
  sudo easy_install-3.5 pip
else
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
virtualenv ENV
echo "source ENV/bin/activate"
source ENV/bin/activate

echo "====================================================================="
echo "install Django:"
echo "pip3 install Django"
pip3 install Django 

# lib for third-party auth
pip3 install python-social-auth

