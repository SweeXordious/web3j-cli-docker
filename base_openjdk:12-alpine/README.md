# This image is based on openjdk:12-alpine

## Limitations

- The image size is 793MB and that is because:
  - gradle is installed on it. So you won't have to download it everytime you want to run a command.
  - a test project is ran during the build so that the dependencies of web3j-cli wont be downloaded everytime.
  
- The output project is owned by root. So you need to change its ownership to your current user to start interacting with it.

- When running web3j-cli, the following warnings appear:

```

WARNING: An illegal reflective access operation has occurred
WARNING: Illegal reflective access by org.bouncycastle.jcajce.provider.drbg.DRBG (file:/opt/lib/bcprov-jdk15on-1.61.jar) to constructor sun.security.provider.Sun()
WARNING: Please consider reporting this to the maintainers of org.bouncycastle.jcajce.provider.drbg.DRBG
WARNING: Use --illegal-access=warn to enable warnings of further illegal reflective access operations
WARNING: All illegal access operations will be denied in a future release

```
