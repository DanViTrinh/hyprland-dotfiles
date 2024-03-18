
# themes in https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

#auto-correction.
#ENABLE_CORRECTION="true"

# red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"


# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# zsh-syntax-highlighting theme
#source ~/.catpuccin-theme-zsh-syntax-highlighting/themes/catppuccin_frappe-zsh-syntax-highlighting.zsh
plugins=(
  git 
  copyfile 
  copypath 
  colored-man-pages 
  colorize extract 
  zsh-syntax-highlighting 
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# ALIASES
source ~/.aliases.zsh

# FUNCTIONS
source ~/.functions.zsh


# end of file things  
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


eval "$(zoxide init zsh --cmd cd)"

eval "$(starship init zsh)"
