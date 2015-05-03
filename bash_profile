# .bash_profile

# edit bash config to .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#set mac terminal color
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad



# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH

#export ANT_HOME=/Users/xx/xx/apache-ant-1.9.4
#export PATH=${PATH}:${ANT_HOME}/bin
