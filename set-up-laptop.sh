#!/bin/bash

# Install Homebrew and xcode build tools
# - stops script from prompting the user to take action - see https://stackoverflow.com/a/25535532
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
