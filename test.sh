#!/bin/bash

# Stop executing bash script steps after the first error
set -e

# This line should fail the GitHub Workflow
brew list hello

# This line should not be run
echo "This line should not be printed if 'brew list hello' failed"
