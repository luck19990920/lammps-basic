#!/bin/bash
#SBATCH -p amd_512
#SBATCH -N 1
#SBATCH -n 16
source /public3/soft/modules/module.sh
module load mpi/oneAPI/2022.1
export PATH=/public3/home/scg5830/software-scg5830/lammps-23Jun2022/src:$PATH
mpirun -np 16 lmp_intel_cpu_intelmpi -in input.lammps
