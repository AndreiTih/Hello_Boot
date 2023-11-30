## Hello Boot. Writing a string on the screen after booting off the B.I.O.S. Part 1


Compiling and running the code:

## On Windows:

Tools needed:

[Bochs](https://bochs.sourceforge.io/) : I am using version 2.7, obtained from [their website](https://bochs.sourceforge.io/).

[Cygwin](https://www.cygwin.com/): I am using version 3.3.6.

I am only using these 2 commandline utilities from Cygwin:
[cat](https://www.gnu.org/software/coreutils/manual/html_node/cat-invocation.html#cat-invocation) and [truncate](https://www.gnu.org/software/coreutils/manual/html_node/truncate-invocation.html#:~:text=truncate%20shrinks%20or%20extends%20the,does%20not%20exist%20is%20created.)


To build:

## Using the provided batch scripts:

1. Edit the batch scripts and modify the BOCHS_ROOT variable to point to the root folder of your Bochs installation.
2. Add the cygwin/bin folder to your PATH environment variable

Then run the batch scripts:
Open a commandline terminal pointing at this folder and run:
```
print_hello_boot.bat
```
To run the simulation that prints Hello Boot! from the BIOS
```
print_print_char.bat
```
To run the simulation that prints the character 'A' from the BIOS
```
smallest_program.bat
```
To run the simulation that boots the simplest bootable program referenced in the article from the BIOS


## [Optional] Using make:

Optionally you can use the make build system which can be obtained from Cygwin as well.

1. Edit the Makefile and modify the BOCHS_ROOT variable to point to the root folder of your Bochs installation.

Simply run:
```
make run
```
To run the simulation that prints Hello Boot! from the BIOS
