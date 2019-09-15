cd ~/Repos/desktop/bash_scripts
for file in *; do
  echo "(bash scripts) loading $file"
  cp "$file" ~/.bash_scripts/"$file"
done
