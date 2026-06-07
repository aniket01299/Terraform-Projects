provider "aws" {
  region = var.aws_region
}

# DEV EC2

module "dev_ec2" {

  source = "./modules/ec2"

  ami_id         = var.ami_id
  instance_type  = var.dev_instance_type
  subnet_id      = var.subnet_id
  key_name       = var.key_name
  instance_count = var.dev_instance_count
  instance_name  = "dev-server"
}

# TEST EC2

module "test_ec2" {

  source = "./modules/ec2"

  ami_id         = var.ami_id
  instance_type  = var.test_instance_type
  subnet_id      = var.subnet_id
  key_name       = var.key_name
  instance_count = var.test_instance_count
  instance_name  = "test-server"
}

# PROD EC2

module "prod_ec2" {

  source = "./modules/ec2"

  ami_id         = var.ami_id
  instance_type  = var.prod_instance_type
  subnet_id      = var.subnet_id
  key_name       = var.key_name
  instance_count = var.prod_instance_count
  instance_name  = "prod-server"
}
