

# Task2 - Terraform Azure Infrastructure Deployment

This repository contains Terraform code to deploy a server-based infrastructure on Azure. The infrastructure includes:

- A Virtual Network (VPC) with 2 public and 2 private subnets.

- An ECS cluster deployed in the private subnets.

- A load balancer deployed in the public subnets to expose the ECS service.

## Prerequisites
Before deploying the infrastructure, ensure you have the following:

1. Azure Account: An active Azure subscription.

2. Azure CLI: Installed and configured on your local machine. [Installation Guide](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).

3. Terraform: Installed on your local machine. [Download Terraform](https://www.terraform.io/downloads.html).

## Directory Structure

<img src="../screenshorts/Task2 - 1.png">

## Authentication

To authenticate Terraform with Azure, follow these steps:

1. Log in to Azure using the Azure CLI:
   ```sh
   az login
   ```
2. Set your subscription:
   ```sh
   az account set --subscription <SUBSCRIPTION_ID>
   ```
3. Create a service principal for Terraform:
   ```sh
   az ad sp create-for-rbac --name "terraform-sp" --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
   ```
  Save the output, which includes:
  - client_id
  - client_secret
  - tenant_id
  - subscription_id

4. Update the 'terraform.tfvars' file with the service principal credentials:
  ```sh
  subscription_id = "<YOUR_SUBSCRIPTION_ID>"
  client_id       = "<YOUR_CLIENT_ID>"
  client_secret   = "<YOUR_CLIENT_SECRET>"
  tenant_id       = "<YOUR_TENANT_ID>"
  ```

## Deployment Steps

1. Clone this repository:
   ```sh
   git clone https://github.com/kapi3476343/particle41assessment.git
   cd terraform
   ```
2. Initialize Terraform:
   ```sh
   terraform init
   ```

   <img src="../screenshorts/Task2 - 2.png">
   
3. Review the execution plan:
   ```sh
   terraform plan
   ```

   <img src="../screenshorts/Task2 - 3.png">
   
4. Apply the configuration to create the infrastructure:
   ```sh
   terraform apply
   ```
   Confirm the action by typing yes when prompted.
5. After the deployment is complete, Terraform will output the DNS name of the load balancer. Use this to access your application.

## Deploy
