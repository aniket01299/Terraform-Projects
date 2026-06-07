output "dev_instance_ids" {
  value = module.dev_ec2.instance_ids
}

output "test_instance_ids" {
  value = module.test_ec2.instance_ids
}

output "prod_instance_ids" {
  value = module.prod_ec2.instance_ids
}
