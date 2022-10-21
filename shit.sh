# node make install


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
