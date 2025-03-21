# Basic input output system (BIOS) interrupts

BIOS interrupts are low-level system calls that provide programs with direct access to hardware services in x86 architecture systems. By invoking these interrupts, software can perform tasks such as displaying characters on the screen, reading keyboard input, or accessing disk drives, all without needing to manage the intricate details of the hardware.

How BIOS Interrupts Work:

When a program needs to utilize a BIOS service, it executes the INT assembly instruction followed by the specific interrupt number corresponding to the desired service. For example, to access video services, a program would use INT 0x10. The function within that service is then specified by setting the appropriate value in the AH register before invoking the interrupt. Parameters and return values are typically passed through CPU registers.
