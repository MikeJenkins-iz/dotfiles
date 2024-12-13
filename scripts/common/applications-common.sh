# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities
brew install flycut
brew install rectangle

# Terminals
brew install iterm2

# Browsers
##brew install google-chrome # already have it
##brew install firefox # get it on your own

# Communication
##brew install slack # already installed

set -e
