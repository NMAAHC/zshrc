MYNAME='NMAAHC Media Archives & Conservation'
export MYNAME

# ls colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

autoload -U colors
colors
bold=$(tput bold)

if [ -f ~/.zshrc_alias ]; then
source ~/.zshrc_alias
fi

if [ -f ~/.zshrc_functions ]; then
source ~/.zshrc_functions
fi

echo " "
echo $fg[blue]${bold}Hello ${MYNAME}!
echo $fg[white]Be All That You Can Be Today!
echo $fg[red]Let\'s Go!

precmd() { print "" }
PROMPT='%F{yellow}%B%d%f
%F{cyan}≈:≈%f%b '

export LESS='-MN'

export EDITOR="code -w"
export VISUAL="$EDITOR"

# history modifications
export HISTSIZE=1000 #500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p ' # using strftime format
export HISTCONTROL=ignoreboth # ignoreups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"

setopt extended_glob


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

