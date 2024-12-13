echo
echo "Installing most recent version of OpenJDK"

# Install OpenJDK using Homebrew
brew install openjdk

# Configure opensjdk as instructed by 'brew info openjdk'
sudo ln -sfn "$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk

# Set up environment variables for OpenJDK
echo "Configuring environment variables for OpenJDK..."
echo "export PATH=\"$(brew --prefix)/opt/openjdk/bin:\$PATH\"" >> ~/.zshenv
echo "export CPPFLAGS=\"-I$(brew --prefix)/opt/openjdk/include\"" >> ~/.zshenv

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
echo "OpenJDK installation and configuration complete!"

############################
####### Steps to use #######
##chmod +x java-openjdk.sh
##./java-openjdk.sh
############################
