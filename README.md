for automatic ls on cd in git bash:

.bashrc

```
function cd {
    builtin cd "$@" && ls -aF
    }
```

or in bash_profile.sh

```
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
```

to display full path in zsh rather than just current dir:

source: https://stackoverflow.com/questions/34623956/how-to-get-absolute-path-on-a-zsh-prompt?rq=1

`To preserve original prompt format (colors, git info and potentially other customisations before this one) except related to path info, you could append following to the end of ~/.zshrc:`

```
PROMPT=${PROMPT/\%c/\%~}
```

if nvm needs to be restarted every time in WSL2, add this to .zshrc
```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
```

to stop and restart WSL2

from elevated CMD prompt
```
net stop LxssManager
net start LxssManager
```

to automatically launch ssh-agent, add this to .zshrc
```
# ref: https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows

env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env
```

to map wsl2 to network drive in windows explorer
click Computer -> Map Network Drive -> `\\wsl$\Ubuntu-18.04\`

to find IP of WSL2 if localhost not working
```
ip addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
```
