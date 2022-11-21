alias reload='. ~/.zshrc'

# EXA aliases
# general use
alias ls='exa'                                                         # ls
alias l='exa -lbF --git'                                               # list, size, type, git
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGF --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUSa --git --color-scale'  # all list
alias lx='exa -lbhHigUSa --git --color-scale' # all + extended list

# speciality views                                                     # one column, just names
alias lt='exa --tree --level=3'                                        # tree