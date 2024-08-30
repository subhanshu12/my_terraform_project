resource "aws_instance" "web" {
  ami           = "ami-0768cf5c163af7ac3"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  security_group = var.security_group_id

  tags = {
    Name = "my-ec2-instance"
  }
}

output "instance_id" {
  value = aws_instance.web.id
}
