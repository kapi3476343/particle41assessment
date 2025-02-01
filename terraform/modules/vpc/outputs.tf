output "vpc_id" {
  description = "ID of the VPC"
  value       = azurerm_virtual_network.vpc.id
}

output "private_subnets" {
  description = "List of private subnets"
  value       = azurerm_subnet.private[*].id
}
