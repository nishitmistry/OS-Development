# Learning OS Development in hopes of creating my own shady OS one day

## Using Docker to simulate Linux

Due to limited availability of linux system and my laziness to shift from windows to linux, i will be using Docker to excute code that i write. So i will be simulating OS inside a simulator ran by some simulating engine which runs on an OS, that my Pla (Friends refrence).

### You can run Docker container with this command attaching the specified volume to container's volume

```
    docker run -it --rm -v "D:\OS Development:/mnt/binaries" qemu
```

### For converting Assembly to binary i will be using Nasm assembler

```
    nasm <FileName>.asm -o  <fileName>.bin
```
