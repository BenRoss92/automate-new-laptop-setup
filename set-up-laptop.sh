#!/bin/bash

# If any command fails, stop executing subsequent commands and fail the script
set -e

# Install a fresh version of Homebrew without prompting the user - see https://github.com/Homebrew/install#:~:text=If%20you%20want%20to%20run%20the%20Homebrew%20installer%20non%2Dinteractively%20without%20prompting%20for%20passwords%20(e.g.%20in%20automation%20scripts)%2C%20you%20can%20use%3A
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Check Homebrew has been installed
brew help

# Check Xcode Command Line Tools have been installed by Homebrew
xcode-select -p

# Install Git using Homebrew
echo "Installing newer version of Git using Homebrew"
brew install git

echo "Checking Homebrew's Git version is installed"
brew list git

echo "Checking if Git is using Homebrew's Git version"
homebrew_git_location="/usr/local/bin/git"
if [ "$(which git)" = $homebrew_git_location ]
then
  echo "Git is correctly using the Homebrew Git version"
else
  echo "Git is stored in an expected location. Git may be using the built-in macOS Git version rather than the Git Homebrew version."
  exit 1
fi

echo "Checking if Git is working (checking version)"
git --version
