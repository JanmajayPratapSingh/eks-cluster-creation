# Terraform Remote State Datasource - Remote Backend AWS S3
data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "shivalika-aws-eks"
    key    = "dev/eks-irsa-demo/terraform.tfstate"
    region = "us-east-1"
  }
}