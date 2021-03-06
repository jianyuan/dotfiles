#
# Defines environment variables.
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "$HOME/.zprofile" ]]; then
  source "$HOME/.zprofile"
fi

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
