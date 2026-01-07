module "EC2" {
  source = "./Modules/ec2"
  instance_type = var.instance_type
  instance_ami = var.instance_ami
}