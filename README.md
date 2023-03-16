# Automate new laptop setup at YouView

## Running bash script locally

Run in the command line:

```bash
./set-up-laptop.sh
```

## Running bash script inside of a docker container:

### Build the Docker container

```bash
docker build -t automate-new-laptop-setup .
```

### Run the docker container

```bash
docker run -it --rm --name automate-new-laptop-setup automate-new-laptop-setup
```
