# inspired by https://github.com/prasanthrangan/hyprdots/blob/main/Configs/.config/hypr/scripts/screenshot.sh
# set XDG_PICTURES_DIR is not set
if [ -z "$XDG_PICTURES_DIR" ]; then
	XDG_PICTURES_DIR="$HOME/Pictures"
fi

# set save dir in swappy
swpy_dir="${XDG_CONFIG_HOME:-$HOME/.config}/swappy"
save_dir="${2:-$XDG_PICTURES_DIR/Screenshots}"
save_file=$(date +'%y%m%d_%Hh%Mm%Ss_screenshot.png')
mkdir -p $save_dir
mkdir -p $swpy_dir

echo -e "[Default]\nsave_dir=$save_dir\nsave_filename_format=$save_file" >$swpy_dir/config

# direct grimblast screenshot to tmp instead, option to save is in swappy
temp_screenshot="/tmp/screenshot.png"

# screen shot itself with grimblast, select area
grimblast copysave area $temp_screenshot && swappy -f $temp_screenshot
