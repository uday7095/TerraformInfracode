provider "aws" {
  profile    = "default"
  region     = var.region
}

resource "aws_instance" "WindowsBox" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.medium"
  key_name = "3385"

  subnet_id = "subnet-0284d35b71c7cc0b7"
  vpc_security_group_ids = ["sg-0b6e8e9e9cbaaee47"]

  tags = {
    Name ="WindowsBox"
  }
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.WindowsBox.id
}

