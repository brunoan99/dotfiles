# add to path without duplications
function add_to_path {
    PATH=:$PATH
    PATH=$1${PATH//:$1:/:}
}

# add vscode path from outside of wsl
add_to_path "$HOME/.emacs.d/bin"
add_to_path "$HOME/.local/bin"
add_to_path "usr/bin/elixir"
add_to_path "$HOME/.cabal/bin"
add_to_path "$HOME/.ghcup/bin:$PATH"
add_to_path "$HOME/go/bin"
