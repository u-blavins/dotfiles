eval "$(/opt/homebrew/bin/brew shellenv)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

alias java8="sdk use java 8.0.402-amzn"
alias java11="sdk use java 11.0.22-amzn"
alias java17="sdk use java 17.0.10-amzn"
alias java21="sdk use java 21.0.2-amzn"