# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
up_merge_push() {
    hg up -c $1
    hg branch
    hg pull
    hg merge $2
    hg com -m "merged"
    hg push
    hg up -c $2
    hg branch
}

alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias hb='hg branch'
alias hbs='hg branches'
alias hs='hg st'
alias hpl='hg pull'
alias hph='hg push'
alias hu='hg up -c'
alias hm='hg merge'
alias hc='hg com -m'
alias mpush='hg pull && hg merge && hg com -m "merged"; hg push'
alias evst='cd /var/webapps/everest2'
alias scan='cd /opt/smartscan'
alias core='cd /opt/smartcore3'
alias api='cd /opt/smartapi3'
alias umpush=up_merge_push

PS1="[\u@ev-14-vm \w]\$ "
