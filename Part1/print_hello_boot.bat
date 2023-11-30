SETLOCAL
:: 10485760 = 10 MegaBytes
set IMAGE_SIZE=10485760
:: Removing the apostrophe's to satisfy windows. 
:: This caveat only exists because of the space 
:: in the file path between Program and Files
set BOCHS_ROOT='C:/Program Files/Bochs-2.7'
set BOCHS_ROOT=%BOCHS_ROOT:'=%

:: Compile the assembly source file
nasm print_hello_boot/print_hello_boot_easy.asm -f bin -o bin/print_hello_boot.bin
:: Normally cat would concatenate 2 files. This would be useful later on 
:: when we want to add the boot sector code to the beginning of an image.
:: But in this simple case, this is the equivalent of copy pasting our 
:: compiled assembly code and renaming it to os-image.iso
cat bin/print_hello_boot.bin > os-image.iso
:: Changing the image size to 10 Megabytes. this is to satisfy Bochs 
:: requirements for the size of the image of an ata device.
truncate -s %IMAGE_SIZE% os-image.iso
:: Runs bochs
"%BOCHS_ROOT%/bochs.exe"

ENDLOCAL