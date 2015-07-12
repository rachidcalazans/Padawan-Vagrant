echo "Install Defaults for Linux"

echo "Updating APT"
sudo apt-get -qq -y update

echo "Install Defaults for Rails Dependences"
echo "Installing NodeJs"
sudo add-apt-repository -y ppa:chris-lea/node.js
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get -qq -y install nodejs
