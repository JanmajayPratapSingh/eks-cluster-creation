module "ec2-public-bastian-host-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.0"
  name = "BastionHost"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  #monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public-bastian-security-group.security_group_id]
  
   
  
}

    
  