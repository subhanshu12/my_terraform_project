module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source            = "./modules/ec2"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.vpc.security_group_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "security_group_id" {
  value = module.vpc.security_group_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}
