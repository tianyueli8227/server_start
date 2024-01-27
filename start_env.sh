#!/bin/bash

pip install -U pip

conda create -n robot python=3.9
conda activate robot

pip install numpy sapien gym

# Check the current CUDA version
cuda_version=$(nvcc --version | grep "release" | awk '{print $6}')

# Define the desired CUDA version
desired_cuda_version="12.1"

# Check if the current CUDA version matches the desired version
if [ "$cuda_version" == "$desired_cuda_version" ]; then
    echo "CUDA version is $desired_cuda_version. Installing PyTorch with CUDA $desired_cuda_version..."
    
    # Install PyTorch with the specified CUDA version using Conda
    conda install pytorch torchvision torchaudio "pytorch-cuda=$desired_cuda_version" -c pytorch -c nvidia
else
    echo "CUDA version is not $desired_cuda_version. Skipping PyTorch installation."
fi
