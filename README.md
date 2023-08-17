# Automate setup of new YouView macOS laptops

## What does this repo aim to do?

It provides a way to automate setting up a development environment on a brand new macOS laptop.

Only a single terminal command needs to be run. This command downloads a bash script from this repo and runs it in the command line. The bash script contains steps to set up the laptop.

Downloading and running a bash script in one command was inspired by the command for [downloading and installing Homebrew](https://brew.sh/#:~:text=/bin/bash%20%2Dc%20%22%24(curl%20%2DfsSL%20https%3A//raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)%22).

## What does the bash script currently do?

* Installs Homebrew, which also installs the Xcode Command Line Tools, and verifies that both are installed and working correctly
* Installs Homebrew's version of Git and verifies that it is installed, working correctly and is being used over the pre-installed macOS version of Git

## How to run

To download and run the most up-to-date version of the script in one step without needing to download this repo, run the following in the command line:

```bash
/bin/bash -c "$(curl https://raw.githubusercontent.com/BenRoss92/automate-new-laptop-setup/main/set-up-laptop.sh)"
```

Alternatively you can download the repo and run the script in separate steps via the command line:

1. Clone the repo using Git and `cd` into it, e.g.: `git clone https://github.com/BenRoss92/automate-new-laptop-setup.git && cd automate-new-laptop-setup/`
2. Run the script: `./set-up-laptop.sh`

## How to test

### Running the script in GitHub Actions

GitHub Actions is used as the CI tool for this repo. When a change is pushed to any branch of the remote repo, a GitHub Actions Workflow is automatically run. This Workflow runs the script from this repo against a macOS virtual machine provided by GitHub Actions, to replicate running the script on a macOS machine. Before the script is run, the Workflow uninstalls some of the pre-installed packages included on the macOS Virtual Machine, to try to replicate a new macOS machine environment as much as possible.

If an error occurs in CI when either running the script or preparing the macOS VM environment, the GitHub Actions Workflow will fail.

### Getting notified when a GitHub Actions run finishes

Instead of staring at a GitHub Actions Workflow run in the GitHub CLI UI or GitHub web UI to know whether a run has finished, you can get notified by doing the following:

Requirements:

* macOS
* [iTerm2](https://iterm2.com/)
* [GitHub CLI](https://cli.github.com/)

In iTerm, set a mark by pressing: CMD + ALT + A

An icon of an eye should then appear in the top-right hand corner of the iTerm window:

![iTerm mark](/docs-images/Screenshot%202023-05-25%20at%2011.37.12.png)

Then run:

```bash
gh run watch
```

Then in the interactive GitHub CLI UI, select the GitHub Workflow run that you want to watch

Result: When the Workflow finishes, a native macOS notification will be displayed

## Technologies used

The bash script is run in a macOS Virtual Machine using GitHub Actions whenever a change is made to the repo. This gives us a testing environment that, with a bit of tweaking, can hopefully at least somewhat resemble a new macOS machine. GitHub Actions also shows us any errors that the bash script encounters when being run.

Docker isn't being used to run the bash script, as there is seemingly no Docker image that closely resembles macOS.
