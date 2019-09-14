cd ~/
echo "(i3) loading config"
cp ~/Repos/i3/i3_conf/config ~/.config/i3/config 
cd ~/Repos/i3/ranger_conf
for file in *; do
  echo "(ranger) loading $file"
  cp "$file" ~/.config/ranger/"$file"
done
