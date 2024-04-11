#!/bin/sh

while true; do
	read -p "This script has not been tested do you want to continue? " yn
	case $yn in
	[Yy]*)
		echo "ok running"
		break
		;;
	[Nn]*)
		echo bye
		exit
		;;
	*) echo "Please answer yes or no." ;;
	esac
done
# assumes that sudo, users etc is set up

# installling paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
sudo pacman -S --needed trash-cli

cd ..
trash paru

# installing  packages
paru --needed -S \
	wget \
	curl \
	zsh \
	lazygit \
	tmux \
	neovim \
	git \
	sudo \
	tmux \
	vim \
	vi \
	wezterm \
	stow \
	ttf-hack-nerd \
	waybar \
	openconnect \
	openconnect-sso \
	nwg-displays \
	wlogout \
	yt-dlp \
	grimblast-git \
	keymapper \
	sddm-git \
	firefox \
	qimgv \ # out of date \
	discord \
	spotify \
	yazi \
	ffmpegthumbnailer \
	unarchiver \
	jq \
	poppler \
	fd \
	ripgrep \
	fzf \
	nwg-displays \
	sway-audio-idle-inhibit-git \
	sway-audio-idle \
	inotify-tools \
	pamixer \
	pavucontrol \
	btop \
	swww \
	polkit-kde-agent \
	qt5-wayland \
	qt6-wayland \
	dunst \
	keymapper \
	cliphist \
	nodejs \
	zip \
	unzip \
	zoxide \
	swaylock-effects \
	wev \
	brightnessctl \
	udiskie \
	sddm-theme-tokyo-night-git

# manual installations
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# post install stuff
