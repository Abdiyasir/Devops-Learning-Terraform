# Terraform Cloud-Init Assignment

This repository shows how I configured a cloud-init YAML file via Terraform to automate an EC2 deployment for an NGINX web server.

I will be showcasing each step below with screenshots. 

## Step 1 - Terraform Provider
- The initial step is to build a provider block, this allows Terraform to connect to the cloud using the configuration settings.
- This includes AWS resources for Terraform to connect and also security groups that will later be linked to the EC2 instance.

## Step 2 - EC2 Instance
- I created a new file to define the EC2 instance so it can then host the NGINX webpage. This terraform configuration specifies the AMI ID, instance type, security group and the user data so the instance configures automatically on boot.

## Step 3 - Variables
- I created a variables file to make the Terraform configuration dynamic and reusable.
- This allows the EC2 instance type and AMI ID to be changed when needed without needing to change the infrastructure.
- I metioned the security group in the variables file for the module but not in the root, as this would lead to terraform asking for a value to be passed in.

## Step 4 - Cloud-Init YAML
- The cloud-init YAML file I used allowed me to install and configure the NGINX software on boot for my EC2 instance.

## Step 5 - Modules
- I used the modules to define what to build via the resources and variables.
- The real values exist outside the module in the root configuration.
- This enables reusability and enforces standards at scale.


## Step 6 - Running the Terraform Directory
- terraform init - Initialises the working directory by installing dependencies.
- terraform plam - Previews the changes from the current state to the infrastructure you are building.
- terraform apply - Executes the terraform plan and updates the state file.

## Step 7 - Fully working NGINX page

<img width="1595" height="445" alt="image" src="https://github.com/user-attachments/assets/272adac2-b1a6-46c6-ae3a-21857ed18cfb" />






