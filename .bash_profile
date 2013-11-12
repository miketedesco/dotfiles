# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
   . ~/.bashrc
fi

# Activate ssh_agent
source ~/.agent

# User specific environment and startup programs
#PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
#PATH=$PATH:/usr/local/sbin:$HOME/bin:$HOME/git_repos
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/mtedesco/bin:/Users/mtedesco/git_repos

export PATH
unset USERNAME
