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