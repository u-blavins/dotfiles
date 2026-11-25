# Prompt & fuzzy finder
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"
command -v fzf >/dev/null 2>&1 && source <(fzf --zsh)

# Lazy-load SDKMAN (avoids shell startup delay)
export SDKMAN_DIR="${SDKMAN_DIR:-$HOME/.sdkman}"
sdk() {
  unfunction sdk 2>/dev/null
  [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
  sdk "$@"
}

# Lazy-load NVM (avoids shell startup delay)
export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
_load_nvm() {
  unfunction _load_nvm nvm node npm npx 2>/dev/null
  [[ -s "/opt/homebrew/opt/nvm/nvm.sh" ]] && source "/opt/homebrew/opt/nvm/nvm.sh"
}
nvm()  { _load_nvm && nvm "$@"; }
node() { _load_nvm && node "$@"; }
npm()  { _load_nvm && npm "$@"; }
npx()  { _load_nvm && npx "$@"; }

# Java LTS aliases (Amazon Corretto)
alias java17="sdk use java 17.0.21.1.2-amzn"
alias java21="sdk use java 21.0.13.1.2-amzn"
alias java25="sdk use java 25.0.5.1.2-amzn"

# Node.js LTS aliases
alias node22="nvm use 22"
alias node24="nvm use 24"
alias node26="nvm use 26"
