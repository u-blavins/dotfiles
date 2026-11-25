eval "$(/opt/homebrew/bin/brew shellenv)"

export SDKMAN_DIR="$HOME/.sdkman"
export NVM_DIR="$HOME/.nvm"
export KICS_QUERIES_PATH="/opt/homebrew/opt/kics/share/kics/assets/queries"

# Keep SDKMAN's current Java & JAVA_HOME available without sourcing sdkman-init.sh
if [[ -d "$SDKMAN_DIR/candidates/java/current/bin" ]]; then
  export JAVA_HOME="$SDKMAN_DIR/candidates/java/current"
  export PATH="$JAVA_HOME/bin:$PATH"
fi
