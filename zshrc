HISTFILE=~/.histfile
HISTSIZE=40000
SAVEHIST=40000
WORDCHARS="*?_-.[]~=/&:;!#$%^(){}<>|"

setopt appendhistory hist_ignore_space hist_ignore_all_dups autocd notify prompt_subst no_hup no_check_jobs
setopt interactive_comments
unsetopt extendedglob

bindkey -e
bindkey "^R" history-incremental-search-backward
bindkey "^Z" push-input

bindkey '^[[1;5C' forward-word        # Ctrl+Right
bindkey '^[[1;5D' backward-word       # Ctrl+Left
bindkey '^[[2~' quoted-insert         # Insert
bindkey '^[[3~' delete-char           # Delete
bindkey '^[[H' beginning-of-line      # Home
bindkey '^[[F' end-of-line            # End
bindkey '^[[5~' beginning-of-history  # Page Up
bindkey '^[[6~' end-of-history        # Page Down
bindkey '^?' backward-delete-char     # Backspace

zstyle ':completion:*' menu select

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

autoload -Uz compinit
compinit

autoload -U colors && colors

PROMPT='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}:%{$fg[green]%}%~%{$reset_color%}%(!.#.$) '

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -al'
alias rmrf='rm -rf'

alias vi='vimx'
alias vim='vimx'

# Prevent saving rm commands to history
alias rm=' rm'
alias rmdir=' rmdir'

export EDITOR=vimx
export VIEWER=less
