output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = module.ecs.ecs_cluster_name
}

output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = module.load_balancer.load_balancer_dns
}
