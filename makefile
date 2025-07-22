# === CONFIG ===
ASM=nasm
ASM_FLAGS=-f bin
QEMU=qemu-system-x86_64

# Allow specifying source file like: make BOOT_SRC=boot.asm
BOOT_SRC ?= boot.asm
BOOT_BIN := bin/$(basename $(notdir $(BOOT_SRC))).bin

# === TARGETS ===

all: $(BOOT_BIN) run

$(BOOT_BIN): $(BOOT_SRC)
	@mkdir -p bin
	$(ASM) $(ASM_FLAGS) -o $(BOOT_BIN) $(BOOT_SRC)

run: $(BOOT_BIN)
	$(QEMU) -drive format=raw,file=$(BOOT_BIN)

clean:
	rm -rf bin
