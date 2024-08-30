variable "subnet_id" {
  description = "The ID of the subnet to launch the instance into"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the instance"
  type        = string
}
