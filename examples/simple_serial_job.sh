#!/bin/bash
######################################
# Example of a SLURM job script for Talon3
# Job Name: Sample_Job
# Number of cores: 1
# Number of nodes: 1
# QOS: general
# Run time: 12 hrs
######################################

#SBATCH -J Sample_Job
#SBATCH -o Sample_job.o%j
#SBATCH -p public
#SBATCH --qos general
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 12:00:00
#SBATCH -C r420

### Loading modules 
module load intel/compilers/18.0.1

./a.out > outfile.out
