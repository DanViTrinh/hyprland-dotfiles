<!-- TODO: remove some dependencis and make install script instead -->
# Required dependencies
lazygit
tmux
neovim
git
sudo
tmux
vim 
vi
kitty
zsh
stow
yazi
zoxide
ttf-hack-nerd
zsh-syntax-highlighting
zsh-autosuggestions
waybar
openconnect
openconnect-sso
nwg-displays <!-- super useful -->
wlogout
yt-dlp
grimblast-git
keymapper
sddm-git
sddm-theme-tokyo-night-git

## yazi dependencies
sudo pacman -S yazi ffmpegthumbnailer unarchiver jq poppler fd ripgrep fzf zoxide

# manual install
ohmyzsh
p10k
miniconda3 <!-- install from website -->

# manual configuration

## sddm

```bash
sudo systemctl enable sddm
```


edit theme in /etc/sddm.conf.d/kde_settings.conf

The default configuration file for SDDM can be found at /usr/lib/sddm/sddm.conf.d/default.conf. For any changes, create configuration file(s) in /etc/sddm.conf.d/. See sddm.conf(5) for all options.


set the theme like so:

```conf
[Theme]
# Current theme name
Current=tokyo-night-sddm
```



## keymapper 
```bash
systemctl enable keymapperd.service
```
# Recommeded things
## Add skip host update to discord
Add this to ~/.config/discord/settings.json
{
...
  "SKIP_HOST_UPDATE": true
}







