echo
echo "Installing Amazon Corretto (latest version)..."

# Install Corretto using Homebrew
brew install corretto

# Link Corretto to the system Java directory
sudo ln -sfn "/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk" /Library/Java/JavaVirtualMachines/corretto.jdk

# Set up environment variables for Corretto
echo "Configuring environment variables for Amazon Corretto..."
echo "export PATH=\"/Library/Java/JavaVirtualMachines/corretto.jdk/Contents/Home/bin:\$PATH\"" >> ~/.zshenv
echo "export JAVA_HOME=\"/Library/Java/JavaVirtualMachines/corretto.jdk/Contents/Home\"" >> ~/.zshenv

# Apply changes immediately
source ~/.zshenv

# more java tools
##source ${MY_DIR}/scripts/opt-in/java-tools.sh

# Verify installation
echo
echo "Verification:"
java -version
echo "JAVA_HOME is set to: $JAVA_HOME"

echo
echo "Amazon Corretto installation and configuration complete!"

############################
####### Steps to use #######
##chmod +x java-corretto.sh
##./java-corretto.sh
############################
