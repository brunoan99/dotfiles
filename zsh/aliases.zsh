# terminal
alias reload='. ~/.zshrc'

# exa on ls
alias ls='exa --icons'                                                		# ls
alias ll='ls -lbGF --no-filesize --no-user --no-time --git'                     # long list
alias la='ls -lba  --no-filesize --no-user --no-time --git --color-scale'       # all list
alias lt='ls -lT   --no-filesize --no-user --no-time --git --level=3'           # tree

# zoxide on cd
alias cd='z'

# so
alias suspendit='sudo sh -c "echo mem > /sys/power/state"'
alias upgrade='sudo pacman -Syu --noconfirm && yay -Syu --noconfirm'
alias auto_clean='sudo pacman -R $(sudo pacman -Qdtq) && yay -Yc'

# docker
alias d='docker'
alias dc='docker compose'
alias dcr='docker compose down && docker compose up -d'
alias remove_containers='docker rm -f "$(docker ps -aq)"'
alias clean_containers='docker container prune'
alias clean_images='docker image prune'

# cargo
alias cargo-clippy='cargo clippy -- -A clippy::all -W clippy::correctness -W clippy::suspicious -W clippy::complexity -W clippy::perf -W clippy::style -W clippy::pedantic -W clippy::nursery -W clippy::cargo'
