# Postgres.app
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# GDAL
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Terminal Styles
export PS1='\e[0:35m⌘\e[m \e[0:36m\w/\e[m \e[0:33m`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\e[m'