#!/bin/sh
#SBATCH --mem-per-cpu=512
#SBATCH --job-name='test'
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out
#SBATCH --array 1-3

module load matlab/2016a
matlab -nodisplay -r "run, quit"

