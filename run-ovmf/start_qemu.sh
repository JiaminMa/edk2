#!/usr/bin/bash

qemu-system-x86_64 -pflash bios.bin -hda fat:rw:hda_contents -net none
