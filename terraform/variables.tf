variable "aws_region" {
  type        = string
  description = "region used to deploy workloads"
  default     = "ca-west-1"
  validation {
    condition     = can(regex("^ca-", var.aws_region))
    error_message = "The aws_region value must be a valid region in the CA, starting with \"ca-\"."
  }
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
  }
}

variable "variables_sub_cidr" {
  description = "CIDR Block for the Variables Subnet"
  type        = string
  default     = "10.0.203.0/24"
}

variable "variables_sub_az" {
  description = "Availability Zone used Variables Subnet"
  type        = string
  default     = "ca-west-1a"
}

variable "variables_sub_auto_ip" {
  description = "Set Automatic IP Assigment for Variables Subnet"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment for deployment"
  type        = string
  default     = "dev"
}

variable "phone_number" {
  type      = string
  sensitive = true
  # default   = "867-5309"
}

variable "ca-west-1-azs" {
  type = list(string)
  default = [
    "ca-west-1a",
    "ca-west-1b",
    "ca-west-1c",
  ]
}

variable "ip" {
  type = map(string)
  default = {
    prod = "10.0.150.0/24"
    dev  = "10.0.250.0/24"
  }
}

variable "env" {
  type = map(any)
  default = {
    prod = {
      ip = "10.0.150.0/24"
      az = "ca-west-1a"
    }
    dev = {
      ip = "10.0.250.0/24"
      az = "ca-west-1b"
    }
  }
}
