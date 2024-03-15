!#/bin/bash

sudo apt update -y
sudo apt upgrade -y

cho "installing Sublime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y
echo "installing rustscan"
wget https://github.com/RustScan/RustScan/releases/download/1.10.0/rustscan_1.10.0_amd64.deb
sudo dpkg -i rustscan_1.10.0_amd64.deb
echo "uninstalling crackmapexec"
sudo apt remove crackmapexec -y
echo "installing pipx"
sudo apt install pipx -y
echo "installing netexec with pipx"
git clone https://github.com/Pennyw0rth/NetExec.git
cd netexec
pipx install . -y
echo "installing terminator"
sudo apt install terminator -y
echo "putting crackeverything into /home/martin/.local/bin"
