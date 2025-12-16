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

## Step 4 - Modules

## Step 5 - Running the Terraform Directory

## Step 6 - Fully working WordPress



