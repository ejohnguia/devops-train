module "subnet_addrs" {
  source  = "hashicorp/subnets/cidr"
  version = "1.0.0"

  base_cidr_block = "10.0.0.0/22"
  networks = [
    {
      name     = "module_network_a"
      new_bits = 2
    },
    {
      name     = "module_network_b"
      new_bits = 2
    },
  ]
}

output "subnet_addrs" {
  value = module.subnet_addrs.network_cidr_blocks
}

# module "website_s3_bucket" {
#   source = "./modules/aws-s3-static-website-bucket"

#   bucket_name = var.s3_bucket_name
#   aws_region  = "ca-west-1"

#   tags = {
#     Terraform   = "true"
#     Environment = "certification"
#   }
# }
