terraform {
  backend "s3" {
    bucket         = "cdaas"
    key            = "terraform.tfstate"
    region         = "eu-central-1"    
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-central-1"
}

module "EC2" {
  source    = "./modules/EC2"
}
