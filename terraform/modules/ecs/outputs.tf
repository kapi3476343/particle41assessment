output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = azurerm_container_group.ecs.name
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = azurerm_container_group.ecs.name
}
