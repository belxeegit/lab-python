#!/bin/bash 

#SBATCH --job-name=pi_optimizado_alumno01 
#SBATCH --partition=hpc-bio-ampere  
#SBATCH --ntasks=1 
#SBATCH --cpus-per-task=1 
#SBATCH --chdir=/home/alumno01/lab-python 
#SBATCH --time=00:10:00 
#SBATCH --output=pi_optimizado_%j.out 
#SBATCH --error=pi_optimizado_%j.err
echo "--------------------------------" 
echo "Job ID: $SLURM_JOB_ID" 
echo "Nodo: $SLURM_NODELIST" 
echo "Partition: $SLURM_JOB_PARTITION" 
echo "Fecha: $(date)" 
echo "--------------------------------" 
module load anaconda/2025.06 
echo "" 
ipython pi-solution-alumno01.ipynb 
echo "" 
echo "---------------------------------" 
echo "Job finalizado: $(date)"
