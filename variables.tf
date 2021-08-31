variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-south-1"
}

variable "subnet_prv1" {
  description = "Private Subnet 1"
  default = "subnet-0284d35b71c7cc0b7"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "3385"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "my-jenkins-security-group"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-ec2-instance"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = " ami-0c1a7f89451184c8b"
}
