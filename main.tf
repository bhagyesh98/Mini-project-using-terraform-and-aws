terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_instances" {
  source         = "./modules/ec2"
  instance_count = 2
  instance_type  = "t2.micro"
  ami            = "ami-00f251754ac5da7f0"
}

module "load_balancer" {
  source    = "./modules/loadbalancer"
  instances = module.ec2_instances.instance_ids
}