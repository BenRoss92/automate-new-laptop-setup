#!/bin/bash


# If any command fails, stop executing subsequent commands and fail the script
set -e

# Install a fresh version of Homebrew without prompting the user - see https://github.com/Homebrew/install#:~:text=If%20you%20want%20to%20run%20the%20Homebrew%20installer%20non%2Dinteractively%20without%20prompting%20for%20passwords%20(e.g.%20in%20automation%20scripts)%2C%20you%20can%20use%3A
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Check Homebrew has been installed
brew help

# Check Xcode Command Line Tools have been installed by Homebrew
xcode-select -p

# Install Homebrew packages
brew install --cask slack microsoft-teams microsoft-outlook

# Check that those Homebrew packages are installed
brew list slack
brew list microsoft-teams
brew list microsoft-outlook
