FROM ubuntu:latest

# Run apt-get update and apt-get install on the same line (best practice) - see https://stackoverflow.com/a/42981752
# Homebrew relies on Git already being installed. MacOS comes preinstalled with Git, so am replicating a similar environment
RUN apt-get update && apt-get install -y curl && apt-get install -y git

COPY set-up-laptop.sh /

CMD ["bash", "/set-up-laptop.sh"]
