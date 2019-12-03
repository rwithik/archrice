export ZSH="/home/rwithik/.oh-my-zsh"

## Set the theme here. I'm using starchip, which is written in rust, so I don't need this. Some of the themes mentioned below look cool. Also try random.
# ZSH_THEME="half-life" # Really good. Just make it two lined.
# ZSH_THEME="lukerandall"
# ZSH_THEME="mytheme"
# ZSH_THEME="simple"
# ZSH_THEME="agnoster-edited"
# ZSH_THEME="garyblessington-edited"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="afowler"
# ZSH_THEME="linuxonly"
# ZSH_THEME="pygmalion" # two lined only if needed!
# ZSH_THEME="eastwood" # clean
# ZSH_THEME="sunrise"

HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=4
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# This is where the magic starts. Don't touch anything.
# Most of these is taken from the oh-my-zsh.sh script. 
# My aim was to create a lighter version that has most of the functionalities and works well enough. 

ZSH_CACHE_DIR="$ZSH/cache"
autoload -U compaudit compinit
ZSH_COMPDUMP="${ZDOTDIR:-${HOME}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

# This is funky stuff. Don't touch. Nope.

if [[ $ZSH_DISABLE_COMPFIX != true ]]; then
	source $ZSH/lib/compfix.zsh
	 # If completion insecurities exist, warn the user
	handle_completion_insecurities
	# Load only from secure directories
	compinit -i -C -d "${ZSH_COMPDUMP}"
else
	# If the user wants it, load from all found directories
	compinit -u -C -d "${ZSH_COMPDUMP}"
fi

## I have no idea what all these do. Just in here in case it breaks anything.
source ~/.oh-my-zsh/lib/bzr.zsh
source ~/.oh-my-zsh/lib/clipboard.zsh
source ~/.oh-my-zsh/lib/compfix.zsh
source ~/.oh-my-zsh/lib/completion.zsh
source ~/.oh-my-zsh/lib/correction.zsh
source ~/.oh-my-zsh/lib/diagnostics.zsh
source ~/.oh-my-zsh/lib/directories.zsh
source ~/.oh-my-zsh/lib/functions.zsh
source ~/.oh-my-zsh/lib/git.zsh
source ~/.oh-my-zsh/lib/grep.zsh
source ~/.oh-my-zsh/lib/history.zsh
source ~/.oh-my-zsh/lib/key-bindings.zsh
source ~/.oh-my-zsh/lib/misc.zsh
source ~/.oh-my-zsh/lib/nvm.zsh
source ~/.oh-my-zsh/lib/prompt_info_functions.zsh
source ~/.oh-my-zsh/lib/spectrum.zsh
source ~/.oh-my-zsh/lib/termsupport.zsh
source ~/.oh-my-zsh/lib/theme-and-appearance.zsh

source ~/.oh-my-zsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Uncomment this when you set a theme
# source ~/.oh-my-zsh/themes/$ZSH_THEME

# Custom shiz.

setsid cat /home/rwithik/.cache/wal/sequences

export PATH="/home/rwithik/.gem/ruby/2.5.0/bin:$PATH"
export EDITOR=/usr/bin/vim

[ -f "$HOME/archrice/aliasrc" ] && source $HOME/archrice/aliasrc
[ -f "$HOME/archrice/functionsrc" ] && source $HOME/archrice/functionsrc
[ -f "$HOME/archrice/foldersrc" ] && source $HOME/archrice/foldersrc
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

unsetopt histverify

# Keybindings

bindkey -s '' 'sudo !!'
bindkey -s 'fuck' 'OA[1~sudo [4~'
bindkey -s  "projects"

# Starship theme init!
# yay -S starship
# https://starship.rs
eval "$(starship init zsh)"
