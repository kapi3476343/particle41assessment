provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

module "vpc" {
  source = "./modules/vpc"

  resource_group_name = var.resource_group_name
  location            = var.location
  vpc_name            = var.vpc_name
  public_subnets      = var.public_subnets
  private_subnets     = var.private_subnets
}

module "ecs" {
  source = "./modules/ecs"

  resource_group_name = var.resource_group_name
  location            = var.location
  vpc_id              = module.vpc.vpc_id
  private_subnets     = module.vpc.private_subnets
  ecs_cluster_name    = var.ecs_cluster_name
  container_image     = var.container_image
}

module "load_balancer" {
  source = "./modules/load_balancer"

  resource_group_name = var.resource_group_name
  location            = var.location
  vpc_id              = module.vpc.vpc_id
  public_subnets      = module.vpc.public_subnets
  ecs_service_name    = module.ecs.ecs_service_name
}
