PATH=/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/jamf/bin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 8.10

# Yoda AWS
source ~/.bashrc

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Go
export GOPATH=$HOME/projects/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# Pip
export PATH="~/Library/Python/3.6/bin:$PATH"

export TT_WEBSITE_DIR="/Users/awong/projects/website"

export TT_PG_SCHEMA_DIR="/Users/awong/projects/postgres-schema"

export TT_TOPHAT_DIR="/Users/awong/projects/tophat"

# Scala
export SBT_OPTS="-Xmx8G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"

# Spark
export SPARK_HOME=$HOME/src/spark-2.0.2
export PATH=$PATH:$SPARK_HOME/bin

# Matchbox-web
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH=/usr/local/opt/postgresql@9.6/bin:$PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

#rbenv
eval "$(rbenv init -)"

#bundler
source ~/.profile

#aliases
alias podi="bundle exec pod install || bundle exec pod install --repo-update"
alias delete_derived_data='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias lint='./Pods/SwiftLint/swiftlint lint 2>/dev/null'
eval "$(pyenv init -)"
