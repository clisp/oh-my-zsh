# settings ported from .bashrc

# force 256 color gnome-terminal terminfo
#if [[ TERM=="xterm" && COLORTERM==gnome* ]]; then
#    export TERM=”gnome-256color”
#fi

TERM=xterm-256color
export TERM
#[ -z "$TMUX" ] && export TERM=xterm-256color

# set my local directory
MY_LOCAL_DIR=~/local

# make elem in path uniq
typeset -U path
# add to path
path=(${MY_LOCAL_DIR}/bin $path)

# set environment virables to add include path for gcc/g++
C_INCLUDE_PATH=${MY_LOCAL_DIR}/include
export C_INCLUDE_PATH
CPLUS_INCLUDE_PATH=${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH

# append include path for apue/unp header
APUE_ROOT=~/pro/linux/apue/src
#UNP_ROOT=~/pro/unp
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
#alias em='env LC_CTYPE=zh_CN.utf8 emacsclient -nw -a "" -s "$HOME/.emacs.d/server/server"'
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
if [ -z "$PYTHONPATH" ]; then
    export PYTHONPATH=${HOME}/local/lib/python2.7/site-packages/
else
    export PYTHONPATH=${HOME}/local/lib/python2.7/site-packages/:$PYTHONPATH
fi

# set environment for TIJ4
TIJ4_SRC_HOME=~/prog/java/tij4/TIJ4-code/
CLASSPATH=$CLASSPATH:$TIJ4_SRC_HOME


## python startup script
export PYTHONSTARTUP=~/.pythonstartup

# hg
export HGEDITOR='vim'

# svn
alias svnwhat="svn st | grep -v -e '^?'"
alias svnview='svn diff | less'
export SVN_EDITOR='vim'

if [ "$(uname -s)" = "Linux" ]; then
   # sun java
   export JAVA_HOME=/usr/lib/jvm/jdk-7-oracle-x64/
   export PATH=$PATH:$JAVA_HOME/bin
   export CLASSPATH=$JAVA_HOME/lib/:$JAVA_HOME/jre/lib/

   # go
   export GOROOT=$HOME/local/opt/go
   export PATH=$GOROOT/bin:$PATH

   # texlive
   export PATH=$HOME/local/opt/texlive/bin/x86_64-linux:$PATH
fi

# mac specified stuff
os_type=$(uname -s)
if [ "${os_type}" = 'Darwin' ]; then
    # use coreutils tools instead of the mac default freebsd one
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    # use gnu sed
    export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
    # use gnu tar
    export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

    # manpath settings
    if [ -z $MANPATH ]; then
        export MANPATH="/usr/local/share/man:/usr/share/man"
    else
        export MANPATH="/usr/local/share/man:/usr/share/man:$MANPATH"
    fi
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

    # use homebrew-installed gnu command tools instead of the mac bsd ones
    export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
fi

### alias
alias joxa="rlwrap joxa"

### elixir
ELIXIR_HOME="$HOME/local/opt/elixir"
if [ -d "$ELIXIR_HOME" ]; then
    export PATH=$ELIXIR_HOME/bin:$PATH
fi

# add linux manpages
export MANPATH="$HOME/local/share/man:$MANPATH"

# spacemacs
alias spacemacs="HOME=~/pro/rep/spacemacs emacs"

# rust
CARGO_HOME=$HOME/.cargo
if [ -d "$CARGO_HOME" ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi
RUST_SRC_PATH=$HOME/pro/code/rustc-nightly/src
if [ -d "$RUST_SRC_PATH" ]; then
    export RUST_SRC_PATH=$RUST_SRC_PATH
fi
