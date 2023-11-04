provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "terraform-git-bucket"    
    key            = "backend-state-file"       
    region         = "us-east-1"            
  }
}
