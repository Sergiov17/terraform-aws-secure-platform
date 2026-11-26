output "vpc_id" {
  description = "ID of the private VPC."
  value       = module.network.vpc_id
}

output "private_subnet_ids" {
  description = "Map of Availability Zone to private subnet ID."
  value       = module.network.private_subnet_ids
}

output "private_route_table_id" {
  description = "ID of the private route table."
  value       = module.network.private_route_table_id
}
