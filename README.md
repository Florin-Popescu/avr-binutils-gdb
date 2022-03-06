# AVR Binutils and GDB
GNU Debugger and binary tools for AVR microcontrollers

## Changes from official repo
- Added support for ATmega324PB. Tested on [ATmega324PB Xplained Pro Board](https://www.microchip.com/DevelopmentTools/ProductDetails/PartNO/ATMEGA324PB-XPRO).
- Added support for ATmega4808. Tested on [AVR-IoT WG Development Board](https://www.microchip.com/DevelopmentTools/ProductDetails/AC164160).
- Fixed a bug which caused GDB to become stuck asking for io_registers.

## Supporting new stuff
This is a rough guide since it only documents changes already performed. So far new devices are still fairly compatibile with existing ones, but this will most likely not always be the case. It is not intendend to be an extensive porting guide.

### New devices
1. Regardless if the family is known or not, add the device to documentation in:
	- ./gas/doc/c-avr.texi
2. Add the device in ./gas/config/tc-avr.c, with its family and architecture.

Forked from latest sources at [GNU Debugger Project](https://www.gnu.org/software/gdb/).
