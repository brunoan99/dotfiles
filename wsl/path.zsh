# add to path without duplications
function add_to_path {
    PATH=:$PATH
    PATH=$1${PATH//:$1:/:}
}

# add vscode path from outside of wsl
add_to_path "/mnt/c/Users/nomeq/AppData/Local/Programs/Microsoft VS Code/bin"
