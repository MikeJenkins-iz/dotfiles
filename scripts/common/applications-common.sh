# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities
brew install --cask flycut
brew install --cask rectangle

# Terminals
brew install --cask iterm2

# Browsers
#brew install --cask google-chrome # already have it
#brew install --cask firefox # get it on your own

# Communication
#brew install --cask slack # already installed
#brew install --cask zoom # no.

set -e
