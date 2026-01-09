variable "instance_ami" {
  type        = string
  description = "AMI ID"

}

variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"

}

variable "security_group" {
  type        = string
  description = "SG for EC2"

}
