variable "project_name" {
  description = "Short identifier used in resource names and tags."
  type        = string
}

variable "environment" {
  description = "Environment name used for tagging."
  type        = string
}

variable "vpc_cidr" {
  description = "IPv4 CIDR block assigned to the VPC."
  type        = string
}

variable "availability_zones" {
  description = "Availability Zones in which to create private subnets."
  type        = list(string)

  validation {
    condition     = length(var.availability_zones) >= 2
    error_message = "Provide at least two Availability Zones for a resilient baseline."
  }
}
