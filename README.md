# Automate setup of new YouView macOS laptops

## How to run locally

To run the setup steps locally on your machine, run the bash script in the command line:

```bash
./set-up-laptop.sh
```

## How to run in CI

Run the GitHub Actions in this repo

### Get notified when a GitHub Actions Workflow run finishes

Instead of staring at a GitHub Actions Workflow run in the GitHub CLI UI or GitHub web UI to know whether a run has finished, you can get notified by doing the following:

Requirements:

* macOS
* iTerm2

In iTerm, set a mark by pressing: CMD + ALT + A

Then run:

```bash
gh run watch
```

Then in the interactive GitHub CLI UI, select the GitHub Workflow run that you want to watch

Result: When the Workflow finishes, a native macOS notification will be displayed

## Technologies used

The bash script is run in a macOS Virtual Machine using GitHub Actions whenever a change is made to the repo. This gives us a testing environment that, with a bit of tweaking, can hopefully at least somewhat resemble a new macOS machine. GitHub Actions also shows us any errors that the bash script encounters when being run.

Docker isn't being used to run the bash script, as there is seemingly no Docker image that closely resembles macOS.

## To do

* Uninstall [pre-installed Xcode Command Line Tools](https://github.com/actions/runner-images/blob/main/images/macos/macos-12-Readme.md#:~:text=Xcode%20Command%20Line%20Tools%2014.2.0.0.1.1668646533) inside GitHub Actions macOS virtual machine. 
    * See if Homebrew installation fails as a result. If yes, install in the bash script before installing Homebrew.
    * Check whether Homebrew tries to install Xcode Command Line Tools as part of the Homebrew installation process.
