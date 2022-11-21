# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# path before adding windows stuff /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

export PATH=/mnt/c/Users/Henry.Withers/AppData/Local/Programs/Microsoft\ VS\ Code/bin:/mnt/c/Windows/System32:/mnt/c/Windows:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

[[ -n "$WT_SESSION" ]] && {
  chpwd() {
    echo -en '\e]9;9;"'
    wslpath -w "$PWD" | tr -d '\n'
    echo -en '"\x07'
  }
}

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussel"
# ZSH_THEME="junkfood"
# ZSH_THEME="jtriley"
# ZSH_THEME="kphoen"
# ZSH_THEME="kphoen" red with red error msg
# ZSH_THEME="miloshadzic" simple with arrow
# ZSH_THEME="muse"
# My favourites are jtriley and kphoen and tjkirch
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "junkfood" "jtriley" "kphoen" "miloshadzic" "muse" "nebirhos" "sorin" "sporty_256" "steef" "sunrise" "superjarin" "tjkirch" "tonotdo" "trapd00r" "wedisagree" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

EDITOR=vim

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias addal='code ~/.zshrc'
alias listal='grep ^alias ~/.zshrc'
alias cdso='cd ~/source'


# --show-control-chars: help showing Korean or accented characters
alias ls='ls -Fa --color=auto --show-control-chars'
alias ll='ls -l'

alias c.='code .'

alias gst='git status'
alias gs='git stash'
alias gsp='git stash pop'
alias gco='git checkout'
alias ga='git add .'
alias gac='git commit -a -m'
alias gbb="git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"
alias gcaa='git commit -a --amend -C HEAD'
alias gls='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]" --decorate'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]" --decorate --numstat'
alias gllnc='git log --pretty=format:"%h\\ %s\\ [%cn]'
alias glld='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cgreen\\ [%cn]" --decorate --date=relative'
alias diff='git diff -- . ":(exclude)package-lock.json"'
alias diff-staged='git diff --staged . ":(exclude)package-lock.json"'
alias gvv='git status -v -v'

alias mydocuments='cd /mnt/c/Users/Henry.Withers/OneDrive\ -\ Beauty\ Bay'

alias crlf='git config --global core.autocrlf true'


alias hostfile='code /mnt/c/Windows/System32/drivers/etc/hosts'

alias explorer='explorer.exe'

alias fixclock='sudo hwclock -s'

alias fixgitremote='git remote set-url origin https://henry-withers@bitbucket.org/beauty-bay/"${PWD##*/}".git'

alias pullallrepos='ls | xargs -I{} git -C {} pull'

alias fancygrep='grep -rni -A 2 --include \*staging.json --exclude-dir=node_modules \"newrelic\" .'
# -A 2 shows 2 lines after
alias grepall='grep -rni -A 2 --exclude-dir=node_modules query .'

alias fixhistory='sh ~/zsh_history_fix'

function wslip {
    OUTPUT=`ip addr show eth0 | grep -oP "(?<=inet\s)\d+(\.\d+){3}"`
    echo $OUTPUT
    ip addr show eth0 | grep -oP "(?<=inet\s)\d+(\.\d+){3}" | xargs printf | clip.exe
}

function cd {
    builtin cd "$@" && ls
}

# ref: https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows

# commenting out after changing from ssh to bitbucket app password

# env=~/.ssh/agent.env

# agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

# agent_start () {
    # (umask 077; ssh-agent >| "$env")
    # . "$env" >| /dev/null ; }

# agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
# agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

# if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
#     agent_start
#     ssh-add
# elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
#     ssh-add
# fi

unset env

PROMPT=${PROMPT/\%c/\%~} # show full path in prompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# echo -e "\e]9;9;\"cwd\"ST"
# printf '\033]9;9;\"cwd\"ST'
# printf '\033]99\"cwd\"ST'
# printf '\033]99"cwd"ST'
# printf '\033]99cwdST'
# printf '\e]9;9;\"cwd\"ST'
# printf '\e]99\"cwd\"ST'
# printf '\e]99"cwd"ST'
# printf '\e]99cwdST'

# export PROMPT_COMMAND='printf "\e]9;9;%s\e\\" "$(wslpath -m "$PWD")"'
export PROMPT_COMMAND='printf "\e]9;9;%s\e\\" "$(wslpath -m "$(%~)")"'
# export PROMPT_COMMAND='printf "\e]9;9;%s\e\\"'
# echo "$PROMPT_COMMAND"
# echo $(%~)
# echo "$(%~)"
# precmd() { eval "$PROMPT_COMMAND" }
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/henry/source/content-translations/app/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/henry/source/content-translations/app/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/henry/source/content-translations/app/node_modules/tabtab/.completions/sls.zsh ]] && . /home/henry/source/content-translations/app/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/henry/source/content-translations/app/node_modules/tabtab/.completions/slss.zsh ]] && . /home/henry/source/content-translations/app/node_modules/tabtab/.completions/slss.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
