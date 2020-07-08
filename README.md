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