# This image is based on openjdk:11

## Limitations

- The image size is 1.23GB and that is because:
  - the openjdk image alone is 606mb.
  - gradle is installed on it. So you won't have to download it everytime you want to run a command.
  - a test project is ran during the build so that the dependencies of web3j-cli wont be downloaded everytime.
  
- The output project is owned by root. So you need to change its ownership to your current user to start interacting with it.
