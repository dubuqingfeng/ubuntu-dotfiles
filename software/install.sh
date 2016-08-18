# !/bin/sh
#
#
#

echo "Updating packages."

apt-get -qq update

echo "Installing Software."
echo "Installing core packages."

#ldconfig
if [ $(getconf WORD_BIT) = '32' ] && [ $(getconf LONG_BIT) = '64' ] ; then
    echo "64"
    #wget -q -O sogoupinyin_i386.deb http://pinyin.sogou.com/linux/download.php?f=linux&bit=64
else
    echo "32"
fi

#Vim
apt-get install -qq -y vim
#Git
apt-get install -qq -y git
#gitg
apt-get install -qq -y gitg
#Zsh
apt-get install -qq -y zsh
apt install python-pip
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

add-apt-repository -y ppa:fcitx-team/nightly
add-apt-repository -y ppa:hzwhuang/ss-qt5
add-apt-repository -y ppa:webupd8team/sublime-text-3
#Docky
add-apt-repository -y ppa:docky-core/stable
#Unity-tweak-tool-daily
add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily
#Code::blocks
add-apt-repository -y ppa:damien-moore/codeblocks-stable

###
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#dpkg -i google-chrome-stable_current_amd64.deb
#apt-get install -f

apt-get install -qq -y php7.0 libapache2-mod-php7.0 php7.0-gd php-pear php7.0-mbstring


###
apt-get install -qq -y fcitx
apt-get install -qq -y shadowsocks-qt5
apt-get install -qq -y sublime-text-installer

apt-get install -qq -y docky
apt-get install -qq -y unity-tweak-tool
apt-get install -qq -y codeblocks
#vi /usr/local/etc/proxychains.conf

rm -rf /var/lib/apt/lists/*