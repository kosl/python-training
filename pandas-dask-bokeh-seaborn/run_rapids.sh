#!/bin/sh

module load apptainer/1.1.5
module load CUDA/12.0

singularity exec  ./rapids.sif \
                        bash -c "export MPLCONFIGDIR=~/.config/matplotlib ; jupyter lab --port 9226 #--ip='0.0.0.0'"

