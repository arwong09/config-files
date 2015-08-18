# TEMPORARY
git update-index --assume-unchanged .ruby-version

# ENVS
export CMS_HOST=cms.dev
export CMS_ENV=dev
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/andrew/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# KEYS
AWS_ACCESS_KEY_ID=AKIAIOM536IQM24YYSVA
AWS_SECRET_ACCESS_KEY=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

# PATHS
source /opt/boxen/env.sh
export PATH="/opt/boxen/nodenv:$PATH"
eval "$(rbenv init -)"
export PATH="/opt/boxen/nodenv/versions/v0.12.2/lib/node_modules:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

# ITERM
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "


# ALIASES
alias cms='cd ~/src/cms; chruby 2.1.3; sublime .; osascript -e '\''tell application "Terminal" to activate'\'' -e "repeat 8 times" -e '\''tell application "System Events" to tell process "Terminal" to keystroke "+" using command down'\'' -e "end repeat";'
alias cmsstart="cd ~/src/cms; chruby 2.1.3; export PGDATA=/opt/boxen/data/postgresql/; pg_ctl restart -m i -l ~/Desktop/postgres.log;  foreman start"
alias librarian="cd ~/src/librarian; chruby 2.1.3; bundle exec rackup config.ru"
alias djay1="cd ~/src/djay; chruby 2.1.3; rabbitmq-server"
alias djay2="cd ~/src/djay; chruby 2.1.3; mix phoenix.server"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
~/.rbenv/shims
