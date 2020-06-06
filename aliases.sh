# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
# alias ls='ls -FGlAhp'

alias ll='ls -l'

alias cdso='cd C:\source'

alias ddu='cdso && docker-compose down && docker-compose up -d'

alias desk='cd ~ && cd Desktop'
alias addal='code ~/../../"Program Files"/Git/etc/profile.d/aliases.sh'
alias listal='grep ^alias ~/../../"Program Files"/Git/etc/profile.d/aliases.sh'
alias gst='git status'
alias gco='git checkout'
alias ga='git add .'
alias gac='git commit -a -m'
alias gbb="git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"

alias gcaa='git commit -a --amend -C HEAD'

alias gls='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]" --decorate'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]" --decorate --numstat'
alias gllnc='git log --pretty=format:"%h\\ %s\\ [%cn]'
alias glld='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cgreen\\ [%cn]" --decorate --date=relative'
alias sln='start *.sln'

# below is what was here before

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac

