output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = azurerm_container_group.ecs.name
}
