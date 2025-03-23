# General Outputs
output "hello-world" {
  description = "Print a Hello World text output"
  value       = "Hello World"
}

output "environment" {
  value = var.environment
}

# VPC Outputs
output "vpc_id" {
  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

output "vpc_information" {
  description = "VPC Information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"
}

# Web Server Outputs
# output "public_url" {
#   description = "Public URL for our Web Server"
#   value       = "https://${aws_instance.ubuntu_server.public_ip}:8080/index.html"
# }

# output "public_ip" {
#   description = "This is the public IP of my web server"
#   value       = aws_instance.web_server.public_ip
# }

# output "public_ip_web_app" {
#   value = module.server.public_ip
# }

# output "public_dns_web_app" {
#   value = module.server.public_dns
# }

# output "public_ip_server_subnet_1" {
#   value = module.server_subnet_1.public_ip
# }

# EC2 Instance Outputs
# output "ec2_instance_arn" {
#   value     = aws_instance.web_server.arn
#   sensitive = true
# }

# Autoscaling Outputs
# output "asg_gorup_size" {
#   value = module.autoscaling.autoscaling_group_max_size
# }

# S3 Bucket Outputs
# output "data-bucket-arn" {
#   value = data.aws_s3_bucket.data_bucket.arn
# }

# output "data-bucket-domain-name" {
#   value = data.aws_s3_bucket.data_bucket.bucket_domain_name
# }

# output "data-bucket-region" {
#   value = "The ${data.aws_s3_bucket.data_bucket.id} bucket is located in ${data.aws_s3_bucket.data_bucket.region}"
# }

# output "s3_bucket_name" {
#   value = module.s3-bucket.s3_bucket_bucket_domain_name
# }

# Local Values Outputs
# output "max_value" {
#   value = local.maximum
# }

# output "min_value" {
#   value = local.minimum
# }

# # Sensitive Outputs
# output "phone_number" {
#   value     = var.phone_number
#   sensitive = true
# }
