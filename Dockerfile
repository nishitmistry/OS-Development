FROM ubuntu:latest
RUN apt update && apt install -y qemu-system-x86 && apt install -y xxd  
WORKDIR /mnt/bin
CMD ["bash"]
