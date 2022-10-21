echo " enter the name of theme you want to install"
echo "options (saber)"
read themeinstall
if [[ ${themeinstall} =~ "saber" ]]; then
echo "installing addital packages for themes"
PKGS=(
'awesome-terminal-fonts'
'lightly-git'
'lightlyshaders-git'
'mangohud' # Gaming FPS Counter
'mangohud-common'
'snapper-gui-git'
'ttf-droid'
'ttf-hack'
'ttf-meslo' # Nerdfont package
'ttf-roboto'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done


cd ~
wget https://github.com/JezerM/web-greeter/archive/refs/tags/3.4.0.tar.gz
tar -xvf 3.4.0.tar.gz
cd web-greeter-3.4.0
sudo make install
cd ~

git clone https://github.com/kud04rk/leafpad.git
cd leafpad
./configure
make
sudo make install-strip
cd ~

cd ~
git clone https://github.com/kud04rk/Openbox_Dotfiles.git
rsync -avxHAXP --exclude '.git*' --exclude 'LICENSE' --exclude '*.md' $HOME/Openbox_Dotfiles/dotfiles/. ~/



cd $HOME/.icons
tar -xJf $HOME/.icons/Papirus-Custom.tar.xz
tar -xJf $HOME/.icons/Papirus-Dark-Custom.tar.xz
tar -xvf $HOME/.icons/capitaine-cursors.tar.gz
sudo ln -vs $HOME/.icons/Papirus-Custom /usr/share/icons/
sudo ln -vs $HOME/.icons/Papirus-Dark-Custom /usr/share/icons/
sudo ln -vs $HOME/.icons/capitaine-cursors /usr/share/icons/


ln -vs $HOME/.kitty-themes/themes/crusedo.conf $HOME/.config/kitty/theme.conf
cd ~


# export PATH=$PATH:~/.local/bin
# cp -r $HOME/OpenboxInstall/dotfiles/* $HOME/.config/
#

# nody greeter for lightdm theme

# git clone https://github.com/JezerM/nody-greeter.git
cd nody-greeter
npm install
npm run rebuild
npm run build

git clone https://github.com/kud04rk/LightdmTheme.git
sudo cp -r $HOME/LightdmTheme /usr/share/web-greeter/themes/

sudo rm -r $HOME/.oh-my-zsh/
sudo rm .zshrc


flatpak install flathub io.github.celluloid_player.Celluloid

flatpak install flathub org.onlyoffice.desktopeditors

flatpak install flathub com.github.wwmm.pulseeffects

sudo pacman -S zsh && chsh -s $(command -v zsh) --noconfirm --needed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "-------------------------------------------------"
echo "          Installing flatpak Packages         "
echo "-------------------------------------------------"

else
export PATH=$PATH:~/.local/bin
fi
echo "-------------------------------------------------"
echo "    Now run the enabling_services.sh as root     "
echo "               sudo -su root                     "
echo "-------------------------------------------------"
node make install