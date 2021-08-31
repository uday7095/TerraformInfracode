module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = "ami-0c1a7f89451184c8b"
  region                 = "ap-south-1"
  instance_type          = "t2.micro"
  key_name               = "3385"
  monitoring             = true
  vpc_security_group_ids = ["sg-0b6e8e9e9cbaaee47"]
  subnet_id              = "subnet-0eeed9c4540bc3568"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
