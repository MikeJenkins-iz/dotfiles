# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing editors"
echo "Only installing VSCodium and Vim by default"
echo "Uncomment other editors and rerun if you want them"

brew install vscodium
##brew install visual-studio-code # vscodium is vscode without microsoft being overly in it.
##brew install vim # never use it

echo
echo "Other editors are available in this script."
echo "Uncomment what you want."
brew install sublime-text
##brew install macdown
##brew install textmate # never use it
##brew install macvim # never use it
##brew install jetbrains-toolbox --force # guard against pre-installed jetbrains-toolbox
##brew install atom

set -e
