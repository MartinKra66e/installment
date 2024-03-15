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
echo "putting crackeverything into /home/martin/.local/bin"
cd ..
wget https://raw.githubusercontent.com/overgrowncarrot1/CrackEverything6/main/CrackEverything6.py
mv CrackEverything6.py /home/martin/.local/bin
echo "installing flameshot"
sudo apt install flameshot -y
echo "installing obsidian"
cd /home/martin
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.3/obsidian_1.5.8_amd64.deb
sudo dpkg -i obsidian_1.5.8_amd64.deb
rm -rf obsidian_1.5.8_amd64.deb
echo "installing bloodhound python"
pipx install bloodhound
echo "addons"
firefox https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/
firefox https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
echo "installing golang"
sudo apt install golang-go -y
echo "running nxc for the first time"
nxc --version
