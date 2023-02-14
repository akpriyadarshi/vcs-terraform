terraform {
  
}

provider "aws" {
  # Configuration options
  region = "us-east-1"

}


module "apache" {
  source = ".//terraform-aws-apache-example"
  vpc_id = var.vpc_id
  public_key = var.public_key
  instance_type = var.instance_type
  server_name = var.server_name
}

output "public_ip" {
  value = module.apache.EC2_IP
}