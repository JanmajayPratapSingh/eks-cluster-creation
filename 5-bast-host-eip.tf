# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument
resource "aws_eip" "bastion_eip" {
  depends_on = [module.ec2-public-bastian-host-instance, module.vpc ]
  instance = module.ec2-public-bastian-host-instance.id
  domain   = "vpc" 
  
}