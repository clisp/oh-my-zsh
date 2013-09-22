# settings ported from .bashrc


### customization

# force 256 color gnome-terminal terminfo
#if [[ TERM=="xterm" && COLORTERM==gnome* ]]; then
#    export TERM=”gnome-256color”
#fi

TERM=xterm-256color
export TERM
#[ -z "$TMUX" ] && export TERM=xterm-256color

# set my local directory
MY_LOCAL_DIR=~/local

# set my local bin
PATH=$PATH:${MY_LOCAL_DIR}/bin

# set environment virables to add include path for gcc/g++
C_INCLUDE_PATH=${MY_LOCAL_DIR}/include
export C_INCLUDE_PATH
CPLUS_INCLUDE_PATH=${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH


# append include path for apue/unp header
APUE_ROOT=~/rep/program/linux/apue/src
#UNP_ROOT=~/rep/program/unp
C_INCLUDE_PATH=${C_INCLUDE_PATH}:${APUE_ROOT}/include
#\:${UNP_ROOT}/include
CPLUS_INCLUDE_PATH=${C_INCLUDE_PATH}

#LDLIBRARIES=${LDLIBRARIES}:${APUE_ROOT}/lib

# set makefile template file path
MAKE_TEMPLATE_DIR=${MY_LOCAL_DIR}/make_template
export MAKE_TEMPLATE_DIR

# source helper functions
func_file=${MY_LOCAL_DIR}/bin/helper_functions.sh
if [[ -f "${func_file}" ]]; then
   source "${func_file}"
fi

# set environment variable EDITOR for crontab and mercurial
EDITOR=vim
export EDITOR

# alias settings
alias em='env LC_CTYPE=zh_CN.utf8 emacs -nw --debug-init'
alias sc='screen'
alias ipy='ipython'

# set language
LANGUAGE=en_US:en:zh_CN:zh
export LANGUAGE
LANG=en_US.UTF-8
export LANG
LC_ALL=en_US.UTF-8
export LC_ALL

# temporary file directory
# it's ok that we don't set it, because in gnu libc P_tmpdir is set to '/tmp'
# refer to <stdio.h>
TMPDIR=/tmp

# add module path for python
if [ -z PYTHONPATH ]; then
    export PYTHONPATH=${HOME}/local/py_module
else
    export PYTHONPATH=${HOME}/local/py_module:$PYTHONPATH
fi

# set environment for TIJ4
TIJ4_SRC_HOME=~/program/java/tij4/TIJ4-code/
CLASSPATH=$CLASSPATH:$TIJ4_SRC_HOME


# set PATH for mit-scheme
# PATH=${PATH}:/opt/mit-scheme/bin
# export PATH

# turn off system bell on X
#xset -b


## python startup script
export PYTHONSTARTUP=~/.pythonstartup

