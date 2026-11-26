output "vpc_id" {
  description = "ID of the private VPC."
  value       = aws_vpc.this.id
}

output "private_subnet_ids" {
  description = "Map of Availability Zone to private subnet ID."
  value       = { for az, subnet in aws_subnet.private : az => subnet.id }
}

output "private_route_table_id" {
  description = "ID of the private route table."
  value       = aws_route_table.private.id
}
