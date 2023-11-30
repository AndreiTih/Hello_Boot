BOCHS_ROOT = 'C:/Program Files/Bochs-2.7'
IMAGE_SIZE = 10485760
# Default build target
all : os-image-print

# Run bochs to simulate the booting of our code .
run : all
	$(BOCHS_ROOT)/bochs.exe
# This is the actual disk image. We'll simulate a hard-disk that contains the contents of this image.

# MAKE comment: $^ is substituted with all of the target ’s dependancy files. Dependencies being the names on the right of the :
# MAKE comment: $< is the first dependency
# MAKE comment: $@ is the target file
os-image-print : print_hello_boot/print_hello_boot_easy.bin 
	cat $^ > os-image
	cp os-image os-image.iso
	truncate -s $(IMAGE_SIZE) os-image.iso


os-image-smallest: smallest_program/boot_sect.bin 
	cat $^ > os-image
	cp os-image os-image.iso
	truncate -s $(IMAGE_SIZE) os-image.iso
	
  
%.bin : %.asm
	nasm $< -f bin -o $@

clean :
	rm -fr *.bin *.dis *.o *.pe *.iso *.dis os-image bochsout.txt
	rm -fr kernel/*.o boot/*.bin drivers/*.o bin/*.bin
	
disasm : os-image
	ndisasm -b 32 os-image > os-image.dis
