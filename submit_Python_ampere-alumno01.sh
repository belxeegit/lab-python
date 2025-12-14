#!/bin/bash
#SBATCH --job-name=python_numba_alumno01
#SBATCH --partition=hpc-bio-ampere
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --chdir=/home/alumno01/lab-python
#SBATCH --time=00:10:00
#SBATCH --output=python_numba_%j.out
#SBATCH --error=python_numba_%j.err

# Información del job
echo "-------------------"
echo "Job ID: $SLURM_JOB_ID"
echo "Nodo: $SLURM_NODELIST"
echo "Partition: $SLURM_JOB_PARTITION"
echo "Fecha: $(date)"
echo "--------------------"

# cargamos el módulo de Anaconda
module load anaconda/2025.06

# Parámetro value (tamaño del array)
value=$1

echo ""
echo "Ejecutando notebook con value = $value"
echo ""

# Ejecutar notebook con ipython
ipython reduc-operation-alumno01.ipynb $value

echo ""
echo "--------------------"
echo "Job finalizado: $(date)"
echo "--------------------"
