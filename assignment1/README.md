# Terraform WordPress Assignment

This repository shows how I deployed a WordPress website via AWS with full end to end infrastructure management using Infrastructure as Code via Terraform.

I will be showcasing each step below with screenshots.

## Step 1 - Terraform Provider
- The initial step is to build a provider block, this allows Terraform to connect to the cloud using the configuration settings.
- This includes AWS resources for Terraform to connect and also security groups that will later be linked to the EC2 instance.

## Step 2 - EC2 Instance
- I created a new file to define the EC2 instance so it can then host the WordPress website. This terraform configuration specifies the AMI ID, instance type, security group and public ID assignment.
- Enabling a public IP assigns an IP address to the EC2 instance, allowing external users to access the WordPress website.
- It also includes the user data script, this runs when the instance is launched to install and configure required sofrwared for the application.

## Step 3 - Variables
- I created a variables file to make the Terraform configuration dynamic and reusable.
- This allows the EC2 instance type and AMI ID to be changed when needed without needing to change the infrastructure.

## Step 4 - Outputs
- The output file is a Terraform configuration that prints the public IP address on the terminal after running the Terraform directory.
- This IP address can then be used to connect to the EC2 instance via the internet search bar.

## Step 5 - Modules
- I used the modules to define  what to build via the resources and variables.
- The real values exist outside the module in the root configuration.
- This enables reusability and enforces standards at scale.

## Step 6 - Running the Terraform Directory
- ``terraform init`` - Initialises the working directory by installing dependencies.
- ``terraform plam`` - Previews the changes from the current state to the infrastructure you are building.
- ``terraform apply`` - Executes the terraform plan and updates the state file.

## Step 7 - Fully working WordPress
<img width="391" height="77" alt="image" src="https://github.com/user-attachments/assets/155e59a6-7d75-422a-840b-2a4f1edbf84c" />
<img width="1913" height="957" alt="image" src="https://github.com/user-attachments/assets/4d043b10-6d12-439c-80f7-a0d3ae674129" />










