#!/bin/bash
######################################
# Example of a SLURM job script for Talon3
# Job Name: Sample_Job
# Number of cores: 112
# Number of nodes: 4
# QOS: general
# Run time: 12 hrs
######################################

#SBATCH -J Sample_Job
#SBATCH -o Sample_job.o%j
#SBATCH -p public
#SBATCH --qos general
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node 16
#SBATCH -t 12:00:00
#SBATCH -C r420

### Loading modules
module load PackageEnv/intel17.0.4_gcc8.1.0_MKL_IMPI_AVX

## Use mpirun for MPI jobs
mpirun ./a.out > outfile.out
