cd ~/.bash_scripts
for file in *; do
  echo "(bash scripts) saving $file"
  cp "$file" ~/Repos/desktop/"$file"
done
cd ~/Repos/desktop
git add --all
git commit -m 'saved scripts'
git push