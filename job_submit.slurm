#!/bin/bash

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=gsn               #Set the job name to "JobExample5"
#SBATCH --time=72:00:00              #Set the wall clock limit to 1hr and 30min
##SBATCH --ntasks=4                   #Request 1 task
#SBATCH --nodes=1                    #Request 1 node
#SBATCH --ntasks-per-node=4          #Request 8 tasks/cores per node
#SBATCH --mem=26G                     #Request 2560MB (2.5GB) per node
#SBATCH --output=gsn.%j              #Send stdout/err to "Example5Out.[jobID]"
#SBATCH --gres=gpu:a100:2            #Request 2 GPU per node can be 1 or 2
#SBATCH --partition=gpu              #Request the GPU partition/queue

##OPTIONAL JOB SPECIFICATIONS
##SBATCH --account=123456             #Set billing account to 123456
#SBATCH --mail-type=ALL              #Send email on all job events
#SBATCH --mail-user=zhewen@tamu.edu  #Send all emails to email_address 

#source ~/.bashrc
#conda deactivate
#conda activate gsn
#conda info --envs
#which python3.8
cd /scratch/user/zhewen/ml-gsn
sh /scratch/user/zhewen/ml-gsn/scripts/launch_gsn_newdata_64x64.sh