# .bashrc

#export TERM='screen.xterm-new'
# This is so tmux vi session operate properly

# Set the term so that Ic an see color
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

#export TERM='screen'
# for tmux: export 256color
[ -n "$TMUX" ] && export TERM=screen


# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#      xterm-color) color_prompt=yes;;
#esac

PS1="[\u@\h \W]\$ "
unset PROMPT_COMMAND

# User specific aliases and functions

export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:"

#alias ls='ls --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep -E'
alias tmux='export TERM=screen && tmux'
alias cc='history|sed "s/^ *[0-9]* *//"|sort|uniq -c|sort -ni | tail -n 3'
alias vi='vim'
# Move up a dir
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'
alias ..6='cd ../../../../../../'

#alias ldapsearch_config='/usr/bin/ldapsearch -LLL -x -b "dc=advance,dc=net" -b cn=config -D cn="Directory Manager" -w loomixishard'
#alias ldapsearch='ldapsearch -LLL -x -H ldap://ldap.advance.net/ -b "dc=advance,dc=net"'
#alias ldapvi='/usr/bin/ldapvi -h 801-ldap-master-02.host.advance.net --base dc=advance,dc=net --user uid=mtedesco,ou=people,dc=advance,dc=net '
alias repo="cd ~/git_repos"
alias ducks='du -cks * | sort -rn | head -11'
alias ducksh='du -cks * | sort -rn | head -11'
alias yaba='ssh yabadabadoo'

# append to the history file, don't overwrite it
shopt -s histappend

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
fi

function clear_ram () {
  sync && echo 3 > /proc/sys/vm/drop_caches
}

#GIT_SSL_NO_VERIFY=true

# Source global definitions
#if [ -f /etc/bashrc ]; then
#        . /etc/bashrc
#fi
