echo "Executing .zshrc"
echo "loading autosuggestions"
autoload -Uz compinit
compinit
echo "loading syntax highlighting settings"
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
echo "Loading oh-my-posh settings (fs2.omp.json)"
eval "$(oh-my-posh init zsh --config '~/.fs2.omp.json')"

if [[ $TERM_PROGRAM = "iTerm.app" ]] ; then

#    echo "iTerm detected - setting up iTerm Integration"
#    ITERM2_SQUELCH_MARK=1
#    [[ -e $HOME/.iterm2_shell_integration.zsh ]]  && source $HOME/.iterm2_shell_integration.zsh
fi

echo "Key bindings to emacs"
bindkey -e
if [[ $TERM_PROGRAM = "iTerm.app" ]] ; then
    echo "Extra key bindings for iTerm"
    bindkey  "^[[H"   beginning-of-line
    bindkey  "^[[F"   end-of-line
    bindkey  "^[[1;3D" backward-word
    bindkey  "^[[1;3C" forward-word

fi
