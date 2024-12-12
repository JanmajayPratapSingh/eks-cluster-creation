variable "region" {
    default = "us-east-1"
    type = string
    description = "region to create the infra"
  
}

variable "private_subnets" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
    type = list(string)
    description = "private subnets list"
  
}

variable "public_subnets" {
    default =["10.0.101.0/24", "10.0.102.0/24"]
    type = list(string)
    description = "public subnets list"
  
}

variable "db_subnets" {
    default =["10.0.11.0/24", "10.0.12.0/24"]
    type = list(string)
    description = "db subnets list"
  
}

variable "cidr_range" {
    default ="10.0.0.0/16"
    type = string
    description = "cidr block IP address"
  
}
 
 variable "default_sg_ingress_rules" {
    type = list(map(string))
    description = "Ingress rules for EC2"
    default = [
    { 
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks  = "0.0.0.0/0"
      
    },
    {
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks  = "0.0.0.0/0"
      
    }

  ]
   
 }