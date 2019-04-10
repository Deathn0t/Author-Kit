#!/bin/bash
#COBALT -n 1
#COBALT -t 30
#COBALT -A datascience

echo "Starting Cobalt job script"
export n_nodes=$COBALT_JOBSIZE
export n_mpi_ranks_per_node=1
export n_mpi_ranks=1
#export n_openmp_threads_per_rank=128
export n_hardware_threads_per_core=2
#export n_hardware_threads_skipped_between_ranks=4

source activate dh-cray

aprun -n $n_mpi_ranks -N $n_mpi_ranks_per_node \
      -j $n_hardware_threads_per_core sh script_collect.sh 
