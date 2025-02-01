resource "azurerm_container_group" "ecs" {
  name                = var.ecs_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = "Private"
  os_type             = "Linux"

  container {
    name   = "my-container"
    image  = var.container_image
    cpu    = "0.5"
    memory = "1.5"
  }
}
