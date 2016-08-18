#!/usr/bin/env bash

for file in ~/.{paths,exports,bash_prompt,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing in pathname expansion
shopt -s nocaseglob

# Append to bash history instead of overwriting
shopt -s histappend

# Autocorrect typos in path names when cding
shopt -s cdspell

# Enable some bash4 features when available
for option in autocd globstar
do
    shopt -s "$option" 2> /dev/null
done

# Tab completion for many commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]
then
    source "$(brew --prefix)/etc/bash_completion"
elif [ -f /etc/bash_completion ]
then
    source /etc/bash_completion
fi

# Git tab completion
source $HOME/bin/git-completion.bash

# Autoenv
source /usr/local/opt/autoenv/activate.sh

# Autojump
source /usr/local/etc/autojump.sh

#autoload -Uz compinit && compinit
eval "$(chef shell-init bash)"
