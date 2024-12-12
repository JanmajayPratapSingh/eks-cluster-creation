terraform{
    backend "s3" {
    bucket = "shivalika-aws-eks"
    key    = "dev/eks-irsa-demo/terraform.tfstate"
    region = "us-east-1"

    # For State Locking
    dynamodb_table = "GameScores"    
  }     
}