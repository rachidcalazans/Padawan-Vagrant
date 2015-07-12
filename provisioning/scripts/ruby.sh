echo "Install RVM"
sudo apt-get -qq -y install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
rvmsudo /usr/bin/apt-get -y install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion
echo "Install Ruby 2.2.0"
rvm install 2.2.0
rvm use 2.2.0 --default
echo "Install Ruby 2.1.1"
rvm install 2.1.1
echo "Install Ruby 2.1.2"
rvm install 2.1.2
ruby -v

echo "Install Bundler"
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
