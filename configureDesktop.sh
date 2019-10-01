echo "[CLONING REPOS]"
echo ""
echo ""
echo ""
cd ~/Repos
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

echo "[INSTALLING RANGER]"
echo ""
sudo apt install ranger
echo ""
echo "[INSTALLING SSHPASS]"
echo ""
sudo apt install sshpass
echo ""


echo "[CLONING SCRIPTS]"
echo ""
echo ""
echo ""
cd ~/
mkdir .bash_scripts
cd ~/Repos/desktop/bash_scripts
for file in *; do
  echo "[BASH SCRIPTS] loading $file"
  cp "$file" ~/.bash_scripts/"$file"
done
cd ~/.bash_scripts
for file in *; do
  echo "[BASH SCRIPTS] giving permissions to $file"
  sudo chmod u+x "$file"
done

echo ""
echo ""
echo ""
echo "[LOADING CONFIG FILES]"
./load_config_files.shecho ""
echo ""
echo ""
echo "[COPYING NETRC]"
cp ~/Repos/desktop/.netrc ~/.netrc
# you have to edit this files later
