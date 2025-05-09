#!/usr/bin/env bash

# Make directory structure 
mkdir $HOME/code || echo "Directory Code exists"
mkdir $HOME/source-code || echo "Directory Code exists"
mkdir $HOME/.vim/undodir
mkdir -p $HOME/.local/share/fonts

cp config $HOME/.config


#!/usr/bin/env bash

#Add CTRL + NUMBER to switch desktops
for i in {1..9};
    do gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-$i" "['<Ctrl>$i']";
done
# No Animations please!
gsettings set org.gnome.desktop.interface enable-animations false

ssh-keygen -t ed25519 -C
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


#Install updates
sudo dnf update
sudo dnf upgrade
sudo dnf install -y \
    gcc \
    cmake \ 
    make \
    typescript \
    g++ \
    fzf \
    fish \
    nvim \
    tmux

#RUST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
wget -O $HOME/nerdfont.zip 'https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Hack.zip'
unzip $HOME/nerdfont.zip -d ~/.local/share/fonts

echo "TODOs" 
echo "- make $(whereis fish) default shell" 
echo "- run TMUX tmp Install " 
echo "- install a windowmanager like POP Shell for gnome" 
echo "- if on gnome, install extensions, tweaks, etc" 
echo "..." 
