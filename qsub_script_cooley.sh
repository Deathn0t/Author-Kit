#!/bin/bash
#COBALT -n 1
#COBALT -t 30
#COBALT -A datascience

echo "Starting Cobalt job script"

source activate deephyper-cooley

mpirun -np 2 -ppn 2 sh script_collect.sh
