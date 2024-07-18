eval "$(/opt/homebrew/bin/brew shellenv)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:/Users/jetbrains/.local/bin"
eval "$(pyenv init --path)"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export KICS_QUERIES_PATH=/opt/homebrew/opt/kics/share/kics/assets/queries

nvm alias default 18.19.0

alias java8="sdk use java 8.0.402-amzn"
alias java11="sdk use java 11.0.22-amzn"
alias java17="sdk use java 17.0.10-amzn"
alias java21="sdk use java 21.0.2-amzn"

alias node16="nvm use 16.20.2"
alias node18="nvm use 18.19.0"
alias node20="nvm use 20.11.0"
