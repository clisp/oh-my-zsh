# settings of history mechanism

# history size
HISTSIZE=50000
# read in how many history lines when startup
SAVEHIST=50000
# history file
HISTFILE=~/.zsh_history

# expanse commands of history type and display it, without directly run
setopt HIST_VERIFY

# remove any excess blanks in history
setopt HIST_REDUCE_BLANKS

# don't beep on the bounds of history list
setopt NO_HIST_BEEP

