#!/bin/bash

# Install Homebrew and xcode build tools
# Install a fresh version of Homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Check fresh Homebrew version is installed in the MacOS Virtual Machine's PATH
brew help

# - name: Install a fresh version of Homebrew
#         # Taken from Homebrew docs: 
#         # https://github.com/Homebrew/install/#install-homebrew-on-macos-or-linux:~:text=If%20you%20want%20to%20run%20the%20Homebrew%20installer%20non%2Dinteractively%20without%20prompting%20for%20passwords%20(e.g.%20in%20automation%20scripts)%2C%20you%20can%20use
#         run: NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    #   - name: Check fresh Homebrew version is installed in the MacOS Virtual Machine's PATH
    #     run: brew help