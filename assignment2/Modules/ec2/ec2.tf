resource "aws_instance" "cloud-init" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group]
  user_data     = file("${path.module}/cloud-init.yaml")

  tags = {
    Name = "Cloud-init assignment"
  }

}