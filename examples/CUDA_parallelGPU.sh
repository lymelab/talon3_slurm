#!/bin/bash
######################################
# Example of a SLURM job script for Talon3
# Job Name: Sample_Job
# Number of devices(GPUs): 2
# Number of nodes: 1
# QOS: general
# Run time: 12 hrs
######################################

#SBATCH -J Sample_Job
#SBATCH --ntasks=1
#SBATCH --qos=general
#SBATCH -p public
#SBATCH --gres=gpu:1
#SBATCH -t 12:00:00
#SBATCH -p public
#SBATCH -C r730

### execute code
./a.out -numdevices=2
