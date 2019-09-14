# How to configure all

In home/$USER create a folder Repos

	mkdir Repos

change to directory and clone this repo

	cd Repos
	git clone https://github.com/mnreyes1/desktop
	cd desktop

## Ubuntu

	sudo chmod u+x desktopUbuntu.sh
	./desktopUbuntu.sh

## Manjaro

	sudo chmod u+x desktopManjaro.sh
	./dekstopManjaro.sh


# How to use i3

`mod+shift+q`: close focused window\
`mod+return`: open terminal\
`mod+shift+return`: open ranger\
`mod+shift+w`: change wallpaper\
`mod+w`: open web browser\
`mod+e`: open vscode\
`mod+a`: open audio manager\
`mod+t`: open texmaker\
`mod+p`: open program launcher\
`mod+shift+p`: open another program launcher\
`mod+i`: open network manager\
`mod+shift+i`: open another network manager\
`mod+arrow`: change focus in that direction\
`mod+shift+arrow`: move focused window in that direction\
`mod+number`: switch to workspace *number* \
`mod+ctrl+arrow`: switch to next/previous workspace\
`mod+shift+number`: move focused window to workspace *number* \
`mod+shift+ctrl+arrow`: move focused window to next/previous workspace\
`mod+h`: split in horizontal orientation\
`mod+v`: split in vertical orientation\
`mod+f`: fullscreen\
`mod+s`: change container layout split\
`mod+space`: change tiling/floating windows\
`mod+shift+space`: change focus tiling/floating windows\
`mod+shift+r`: restart i3\
`mod+r`: resize mode\
`mod+0`: exit mode\

## resize mode

`arrow`: resize in that direction\
`return`: exit resize mode

## exit mode

`s`: shutdown\
`r`: reboot


# How to use ranger

`gh`: go to home directory\
`grt`: go to root directory\
`gre`: go to repos directory\
`gcr`: go to ranger config directory\
`gci`: go to i3 config directory\
`gbs`: go to bash scripts directory\
`g<other>`: go to <other> directory\
`subl`: open with sublime\
`tex`: open with texmaker\
`dd`: cut selected files\
`yy`: copy selected files\
`dD`: delete selected files\
`pp`: paste copied/cuted files\
`ess`: execute bash script *save_scripts.sh* (push desktop repo)\
`escf`: execute bash script *save_config_files.sh*\
`elcf`: execute bash script *load_config_files.sh*\
`epr`: execute bash script *pull_repos.sh*\
`e<other>`: execute bash script *other*