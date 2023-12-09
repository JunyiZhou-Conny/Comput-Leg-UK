#!/bin/bash
#SBATCH --job-name=cdmem_api
#SBATCH --gres=gpu:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8

source ~/.bashrc
conda activate scraper
echo "file=$1 env=qtm member_begin=$2 member_end=$3"
python -u /home/jjestra/research/computational_legislature/uk/Coding/CommonDivision/$1.py qtm $2 $3