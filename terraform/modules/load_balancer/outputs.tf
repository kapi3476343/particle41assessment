output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = azurerm_public_ip.public_ip.ip_address
}
