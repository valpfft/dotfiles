# -*- mode: sh -*-
alias e="emacsclient"
alias gpg="gpg2"
alias less="less -R" # display colors correctly
alias la="ls -la"
alias ll="ls -l"
alias ln="ln -v"
alias ls="ls --color -h"
alias mkdir="mkdir -p"
alias tree="tree -C" # add colors

### Ruby/Rails-specific
alias s="rspec"
alias be="bundle exec"
alias migrate="be rake db:migrate db:test:prepare"

alias oports="echo 'User:      Command:   Port:'; echo '----------------------------' ; lsof -i 4 -P -n | grep -i 'listen' | awk '{print \$3, \$1, \$9}' | sed 's/ [a-z0-9\.\*]*:/ /' | sort -k 3 -n |xargs printf '%-10s %-10s %-10s\n' | uniq"
alias serve="python -m http.server"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'
