alias reload='. ~/.zshrc'

alias remove_dep='sudo pacman -R $(sudo pacman -Qdtq)'

# EXA aliases
# general use
alias ls='exa --icons'                                                # ls
alias l='ls -lbF --git'                                               # list, size, type, git
alias ll='ls -lbGF --git'                                             # long list
alias llm='ls -lbGF --git --sort=modified'                            # long list, modified date sort
alias la='ls -lbhHigUSa --git --color-scale'                          # all list
alias lx='ls -lbhHigUSa --git --color-scale' 			      # all + extended list

# speciality views                                                    # one column, just names
alias lt='ls --tree --level=3'                                        # tree
alias any='echo "any"'

# so
alias suspendit='sudo sh -c "echo mem > /sys/power/state"'
alias upgrade='sudo pacman -Syu && yay -Syu'
alias auto_clean='sudo pacman -R $(sudo pacman -Qdtq)'
