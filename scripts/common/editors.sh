# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing editors"
echo "Only installing VSCodium and Vim by default"
echo "Uncomment other editors and rerun if you want them"

brew install --cask vscodium
#brew install --cask visual-studio-code # vscodium is vscode without microsoft being overly in it.
#brew install vim # never use it

echo
echo "Other editors are available in this script."
echo "Uncomment what you want."
#brew install --cask macdown
brew install --cask sublime-text
#brew install --cask textmate # never use it
#brew install --cask macvim # never use it
#brew install --cask jetbrains-toolbox --force # guard against pre-installed jetbrains-toolbox
#brew install --cask atom

set -e
