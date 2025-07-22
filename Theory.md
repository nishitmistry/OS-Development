# Should know

When you power on the computer, the BIOS (Basic Input/Output System) performs POST (Power-On Self-Test).
After that, it looks for a bootable device (like a hard drive, USB, or CD).
It reads the first 512 bytes from the device (called the MBR – Master Boot Record, or boot sector).
This 512-byte boot sector is loaded into memory address 0x7C00.
Then the CPU jumps to 0x7C00 and starts executing the bootloader code from there.

# Basic input output system (BIOS) interrupts

BIOS interrupts are low-level system calls that provide programs with direct access to hardware services in x86 architecture systems. By invoking these interrupts, software can perform tasks such as displaying characters on the screen, reading keyboard input, or accessing disk drives, all without needing to manage the intricate details of the hardware.

How BIOS Interrupts Work:

When a program needs to utilize a BIOS service, it executes the INT assembly instruction followed by the specific interrupt number corresponding to the desired service. For example, to access video services, a program would use INT 0x10. The function within that service is then specified by setting the appropriate value in the AH register before invoking the interrupt. Parameters and return values are typically passed through CPU registers.

# Assembly basic

If you db (define Binary) a value at particular memory location you can access with `mov ah, [memory_location]`
where memory_location is the byte number starting from 0 where the data is stored
