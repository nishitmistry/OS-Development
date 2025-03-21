FROM ubuntu:latest
RUN apt update && apt install -y qemu-system-x86
WORKDIR /mnt/bin
CMD ["bash"]
