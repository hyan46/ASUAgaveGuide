#!/bin/sh
#SBATCH --mem-per-cpu=512
#SBATCH --job-name='test'
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out
#SBATCH --array 1-2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=$USER@asu.edu 


module purge  # Always purge modules to ensure consistent environments
# Load required modules for job's environment
module load anaconda/py3
source activate pytorch

python test.py

source deactivate pytorch
