"""
Created on May 12, 2024
@author: Haoyang Zheng & Wei Deng
Code for Constrained Exploration via Reflected Replica Exchange Stochastic Gradient Langevin Dynamics. ICML 2024
"""

import torch
import torchvision
from datasets import load_dataset
from torchvision import transforms
from torch.utils.data import Dataset, DataLoader
from tqdm import tqdm
import numpy as np

# Set device
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

# Set hyperparameters
num_epochs = 10
batch_size = 64
learning_rate = 0

ds = load_dataset("imagenet-1k")
train_ds = ds["train"]
test_ds = ds["test"]

transform = transforms.Compose([
    transforms.Resize(256),
    transforms.RandomHorizontalFlip(),
    transforms.RandomVerticalFlip(),
    transforms.RandomRotation(degrees=45),
    transforms.ColorJitter(brightness=0.5, contrast=0.5, saturation=0.5, hue=0.5),
    transforms.CenterCrop(224),
    transforms.ToTensor(),
    transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])
])


class CustomImageNetDataset(Dataset):
    def __init__(self, dataset, transform=None):
        self.dataset = dataset
        self.transform = transform

    def __len__(self):
        return len(self.dataset)

    def __getitem__(self, idx):
        image = self.dataset[idx]["image"]
        label = self.dataset[idx]["label"]
        
        if image.mode != 'RGB':
            image = image.convert('RGB')
            
        if self.transform:
            image = self.transform(image)

        return image, label

# Wrap your dataset
train_ds_wrapped = CustomImageNetDataset(train_ds, transform=transform)
test_ds_wrapped = CustomImageNetDataset(test_ds, transform=transform)

batch_size = 128
shuffle = True
num_workers = 4
num_epochs = 10

# Create the DataLoader
train_loader = DataLoader(train_ds_wrapped, batch_size=batch_size, shuffle=shuffle, num_workers=num_workers)
test_loader = DataLoader(test_ds_wrapped, batch_size=batch_size, shuffle=False, num_workers=num_workers)

# train_loader = torch.utils.data.DataLoader(train_dataset, batch_size=batch_size, shuffle=True, num_workers=2)

# Load the ResNet50 model
model = torchvision.models.resnet50(pretrained=True)

# Parallelize training across multiple GPUs
model = torch.nn.DataParallel(model)

# Set the model to run on the device
model = model.to(device)

# Define the loss function and optimizer
criterion = torch.nn.CrossEntropyLoss()
optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate)

# Train the model...
for epoch in range(num_epochs):

    loss_logs = []
    
    pbar = tqdm(train_loader)
    for i, (inputs, labels) in enumerate(pbar):
    # for inputs, labels in train_loader:
        # Move input and label tensors to the device
        inputs = inputs.to(device)
        labels = labels.to(device)

        # Zero out the optimizer
        optimizer.zero_grad()

        # Forward pass
        outputs = model(inputs)
        loss = criterion(outputs, labels)

        # Backward pass
        loss.backward()
        optimizer.step()
        
        loss_logs.append(loss.detach().cpu().numpy())

    # Print the loss for every epoch
        pbar.set_postfix({
            'loss': '{0:1.4e}'.format(np.mean(np.array(loss_logs)))})
    print(f'Epoch {epoch+1}/{num_epochs}, Loss: {loss.item():.4f}')

print(f'Finished Training, Loss: {loss.item():.4f}')