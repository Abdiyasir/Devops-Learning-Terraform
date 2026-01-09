module "cloud-init" {
  source = "./Modules/ec2"
  instance_type = var.instance_type
  instance_ami = var.instance_ami
  security_group = aws_security_group.cloud-init.id
}