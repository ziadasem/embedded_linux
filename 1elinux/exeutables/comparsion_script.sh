#!/bin/bash

echo "print dep of so exe"
ldd so_program

echo "print dep of ao exe"
ldd ao_program

echo "using file command"
file so_program
echo ""
file ao_program

echo "using objdump"
objdump -s so_program
objdump -s ao_program
