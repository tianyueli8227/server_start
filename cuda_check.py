import torch

# Check if a GPU is available
if torch.cuda.is_available():
    # Create a tensor on the GPU
    device = torch.device("cuda")
    x = torch.rand(3, 3).to(device)
    print("GPU is available and PyTorch is using it.")
else:
    print("GPU is not available or PyTorch is not using it.")
