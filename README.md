# Devops-Learning-Terraform

This repository shows how I deployed a WordPress website via AWS with full end to end infrastructure management using Infrastructure as Code via Terraform.

I will be showcasing each step below with screenshots, this includes the configuration of the provider block, the ec2 instance block, variables & more.

## Step 1 - Terraform Provider
- The initial step is to build a provider block, this allows Terraform to connect to the cloud using the configuration settings.
- This includes AWS resources for Terraform to connect and also security groups that will later be linked to the EC2 instance.
<img width="1437" height="911" alt="image" src="https://github.com/user-attachments/assets/961dec1b-ad29-42b6-ae87-b60634cba4ec" />


## Step 2 - EC2 Instance
- I created a new file to define the EC2 instance so it can then host the WordPress website. This terraform configuration specifies the AMI ID, instance type, security group and public ID assignment.
- Enabling a public IP assigns an IP address to the EC2 instance, allowing external users to access the WordPress website.
- It also includes the user data script, this runs when the instance is launched to install and configure required sofrwared for the application.
<img width="1422" height="907" alt="image" src="https://github.com/user-attachments/assets/336f330d-fef4-497b-ab3a-c371fabf6425" />


## Step 3 - Variables
- I created a variables file to make the Terraform configuration dynamic and reusable.
- This allows the EC2 instance type and AMI ID to be changed when needed without needing to change the infrastructure.
<img width="1423" height="331" alt="image" src="https://github.com/user-attachments/assets/7b8504af-f4b3-4b36-8541-bda4f5a8984b" />

## Step 4 - Outputs
- The output file is a Terraform configuration that prints the public IP address on the terminal after running the Terraform directory.
- This IP address can then be used to connect to the EC2 instance via the internet search bar.
<img width="1436" height="362" alt="image" src="https://github.com/user-attachments/assets/f9542324-cfe6-49fe-9a7c-e47c78dad2e3" />

## Step 5 - Modules

## Step 6 - Running the Terraform Directory

## Step 7 - Fully working WordPress




