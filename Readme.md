# Learning OS Development in hopes of creating my own shady OS one day

## Using Docker to simulate Linux

Due to limited availability of linux system and my laziness to shift from windows to linux, i will be using Docker to excute code that i write. So i will be simulating OS inside a simulator ran in an OS ran by some simulating engine which runs on an OS, that my Pla (Friends refrence).

### You can run Docker container with this command attaching the specified volume to container's volume

```
    docker run -it --rm -v "D:\OS Development\bin:/mnt/bin" qemu
```

### For converting Assembly to binary i will be using Nasm assembler

```
    nasm <FileName>.asm -o  <fileName>.bin
```

### Converted binary can be ran with the help of qemu using Follower command

Todo: Attach a monitor ---> setup in docker looked like a nightmare so skipping that

```
 qemu-system-x86_64 -nographic <filename>.bin
```

You can stop the boot loader loop using `clt + a` then pressing lowercase `x`

Shifting to wsl increase is volatile and takes time to start, and there's direct graphic (considering i didn't had to run qemu with -nographics)
DEVELOPERSSS!!!!, you use wsl with vs code which shift your terminals to wsl environment
