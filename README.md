# Automate setup of new YouView macOS laptops

## How to run locally

To run the setup steps locally on your machine, run the bash script in the command line:

```bash
./set-up-laptop.sh
```

## How to run in CI

Run the GitHub Actions in this repo

## Technologies used

The bash script is run in a macOS Virtual Machine using GitHub Actions whenever a change is made to the repo. This gives us a testing environment that, with a bit of tweaking, can hopefully at least somewhat resemble a new macOS machine. GitHub Actions also shows us any errors that the bash script encounters when being run.

Docker isn't being used to run the bash script, as there is seemingly no Docker image that closely resembles macOS.

## To do

* Uninstall [pre-installed Xcode Command Line Tools](https://github.com/actions/runner-images/blob/main/images/macos/macos-12-Readme.md#:~:text=Xcode%20Command%20Line%20Tools%2014.2.0.0.1.1668646533) inside GitHub Actions macOS virtual machine. 
    * See if Homebrew installation fails as a result. If yes, install in the bash script before installing Homebrew.
    * Check whether Homebrew tries to install Xcode Command Line Tools as part of the Homebrew installation process.
* Add any useful notes from 27.04.23 in Evernote 'YouDay idea - Make setting up a new Mac laptop easier' to this repo as markdown and/or code comments
