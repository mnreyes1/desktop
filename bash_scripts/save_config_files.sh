cd ~/
echo "(i3) saving config"
cp ~/.config/i3/config ~/Repos/i3/i3_conf/config
cd ~/.config/ranger/
for file in *; do
  echo "(ranger) copying $file"
  cp "$file" ~/Repos/i3/ranger_conf/"$file"
done
cd ~/Repos/i3
git add --all
git status
git commit -m 'saved config files'
git push
