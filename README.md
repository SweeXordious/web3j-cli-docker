# web3j-cli-docker

# Usage

to build this you will a machine with docker installed on it. 

- On debian based distros : `sudo apt-get update && sudo apt-get install -y docker.io`

- Clone the repo: `git clone https://github.com/SweeXordious/web3j-cli-docker`

#### Build the image 

`docker build .` 

In case of any DNS problems, add the `--network=host` and it will most likely work.


#### Run the container

` docker run -it --rm -v $(pwd):/project -w /project web3j <new/version/…> `


## Limitations

Check each directory to see the corresponding limitations.
