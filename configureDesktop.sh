echo "[CLONING REPOS]"
echo ""
echo ""
echo ""
cd ~/Repos
git clone https://github.com/mnreyes1/i3
echo ""
echo ""
echo ""
cd


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
./load_config_files.sh
echo ""
echo ""
echo ""
echo "[COPYING NETRC]"
cp ~/Repos/desktop/.netrc ~/.netrc
echo "[COPYING WALLPAPERS]"
cp -r ~/Repos/i3/i3-starterpack/wallpapers ~/wallpapers
# you have to edit this files later
