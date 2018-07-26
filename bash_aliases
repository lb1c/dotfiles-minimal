alias ls='ls --color=auto'
alias ll='ls -lh --time-style=long-iso'
alias la='ls -lha'
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias psqlx='psql --no-psqlrc --single-transaction --set="ON_ERROR_STOP=on"'
alias big="du -hsx * | sort -rh | head -10"
alias i="ip --color --brief addr"
alias cronlist='for user in $(cut -f1 -d: /etc/passwd); do echo $user; crontab -u $user -l; done'
alias big="du -hsx * | sort -rh | head -10"
