cd ~/
echo "[INSTALLING DOCKER]"
echo ""
echo ""
echo ""
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
echo ""
echo ""
echo ""

echo "[INSTALLING DOCKER-COMPOSE]"
echo ""
echo ""
echo ""
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
echo ""
echo ""
echo ""

echo "[CLONING REPOS]"
echo ""
echo ""
echo ""
mkdir Repos
cd Repos
mkdir IngSoftware
mkdir BasesGatos
mkdir TeoriaAutomatas
mkdir Arqui
cd TeoriaAutomatas/
git clone https://github.com/PUC-IIC2223/IIC2223-reyes
git clone https://github.com/PUC-IIC2223/syllabus
echo ""
echo ""
cd ..
cd BasesGatos/
git clone https://github.com/IIC2413/Syllabus-2019-2
git clone https://github.com/mnreyes1/basesdegatos
echo ""
echo ""
cd ..
cd Arqui/
git clone https://github.com/IIC2343/Syllabus
echo ""
echo ""
cd ..
cd IngSoftware/
git clone https://github.com/IIC2143-2019-2/proyecto
git clone https://github.com/IIC2143-2019-2/Grupo19-proyecto
echo ""
echo ""
cd ..
git clone https://github.com/mnreyes1/i3
echo ""
echo ""
echo ""
cd

echo "[INSTALLING AND CONFIGURING I3]"
echo ""
echo "[INSTALLING I3]"
echo ""
sudo apt install i3
echo ""
echo "[INSTALLING VIM]"
echo ""
sudo apt install vim
echo ""
echo "[INSTALLING I3 THINGS]"
echo ""
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools 
echo ""
echo "[INSTALLING MORE I3 THINGS]"
echo ""
sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior 
echo ""
echo "[INSTALLING NET-TOOLS]"
echo ""
sudo apt install net-tools
echo ""
echo "[INSTALLING RANGER]"
echo ""
sudo apt install ranger
echo ""
echo "[INSTALLING NETWORK MANAGER]"
echo ""
sudo apt install network-manager
echo ""
echo "[INSTALLING VSCODE]"
echo ""
sudo snap install code --classic
echo ""
echo "[INSTALLING SUBLIME TEXT 3]"
echo ""
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
echo ""
echo ""
echo ""

echo "[LOADING CONFIG FILES]"
echo ""
echo ""
echo ""
cd Repos/i3
cp -a i3-starterpack/. ~
sudo chmod u+x save_config_files.sh
sudo chmod u+x load_config_files.sh
./load_config_files.sh
echo ""
echo ""
echo "[CLONING PULL REPOS SCRIPT]"
echo ""
echo ""
echo ""
cd ~
mkdir .bash_scripts
cp ~/Repos/desktop/pull_repos.sh ~/.bash_scripts/pull_repos.sh
sudo chmod u+x pull_repos.sh
echo "[COPYING NETRC TO GIT]"
cp ~/Repos/desktop/.netrc ~/.netrc
# you have to edit this files later and install the following
## light to change screen brightness (first download the release)
# tar xf light-x.yy.tar.gz
# cd light-x.yy/
# ./configure && make
# sudo make install
