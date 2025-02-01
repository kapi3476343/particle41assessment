output "vpc_id" {
  description = "ID of the VPC"
  value       = azurerm_virtual_network.vpc.id
}

output "public_subnets" {
  description = "List of public subnets"
  value       = azurerm_subnet.public[*].id
}
