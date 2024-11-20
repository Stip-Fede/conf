test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval "$(oh-my-posh init zsh --config '~/.fs2.omp.json')"
[[ -d $HOME/.local/bin ]] && export PATH="$PATH:$HOME/.local/bin"
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
