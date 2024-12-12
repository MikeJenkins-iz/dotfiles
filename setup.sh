#!/usr/bin/env bash
#
# setup.sh:  run the workstation setup
#
# Arguments:
#   - a list of components to install, see scripts/opt-in/ for valid options
#

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/common/homebrew.sh

# Install everything else
source ${MY_DIR}/scripts/common/applications-common.sh #|# Currently flycut, rectangle, iterm2
source ${MY_DIR}/scripts/common/oh-my-zsh.sh
source ${MY_DIR}/scripts/common/editors.sh #|# Currently vscodium, sublime-text
#source ${MY_DIR}/scripts/common/git.sh # get on your own or rerun the scripts yourself
#source ${MY_DIR}/scripts/common/git-aliases.sh # get on your own or rerun the scripts yourself
#source ${MY_DIR}/scripts/common/developer-utilities.sh # you don't need them...yet...
#source ${MY_DIR}/scripts/common/unix.sh # do them manually if you want
#source ${MY_DIR}/scripts/common/configuration-osx.sh # don't mess with the configuration...yet...
#source ${MY_DIR}/scripts/common/documented-extras.sh # no extras

# For each command line argument, try executing the corresponding script in opt-in/
#for var in "$@"
#do
#    echo "$var"
#    FILE=${MY_DIR}/scripts/opt-in/${var}.sh
#    echo "$FILE"
#    if [ -f $FILE ]; then
#        source ${FILE}
#    else
#       echo "Warning: $var does not appear to be a valid argument. File $FILE does not exist."
#    fi
#done

source ${MY_DIR}/scripts/common/finished.sh
#if (( SKIP_ANALYTICS == 0 )); then
#    source ${MY_DIR}/scripts/helpers/google-analytics.sh ${clientID} finish $@
#fi
