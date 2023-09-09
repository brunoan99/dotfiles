# terminal
alias reload='. ~/.zshrc'

# general use
alias ls='exa --icons'                                                # ls
alias ll='ls -lbGF --git'                                             # long list
alias la='ls -lbhHigUSa --git --color-scale'                          # all list
alias lt='ls --tree --level=3'                                        # tree

# so
alias suspendit='sudo sh -c "echo mem > /sys/power/state"'
alias upgrade='sudo pacman -Syu && yay -Syu'
alias auto_clean='sudo pacman -R $(sudo pacman -Qdtq)'

# docker
alias d='docker'
alias dc='docker compose'
alias dcr='docker compose down && docker compose up -d'
alias remove_containers='docker rm -f "$(docker ps -aq)"'
alias clean_containers='docker container prune'
alias clean_images='docker image prune -all'

# cargo
alias cargo-clippy='cargo clippy -- -A clippy::all -W clippy::correctness -W clippy::suspicious -W clippy::complexity -W clippy::perf -W clippy::style -W clippy::pedantic -W clippy::nursery -W clippy::cargo'
