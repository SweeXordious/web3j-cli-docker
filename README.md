# web3j-cli-docker

# Usage

to build this you will a machine with docker installed on it. 

- On debian based distros : `sudo apt-get install docker.io`

- Clone the repo: `git clone https://github.com/SweeXordious/web3j-cli-docker`

#### Build the image 

`docker build .` 

In case of any DNS problems, add the `--network=host` and it will most likely work.


#### Run the container

` docker run -it --rm -v $(pwd):/project -w /project web3j <new/version/…> `


## Limitations

- The image size is 793mb and that is because:
  - gradle is installed on it. So you won't have to download it everytime you want to run a command.
  - a test project is ran during the build so that the dependencies of web3j-cli wont be downloaded everytime.
  
- The output project is owned by root. So you need to change its ownership to your current user to start interacting with it.
