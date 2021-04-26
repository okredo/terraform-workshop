terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
<<<<<<< HEAD
  region     = "us-east-1"
=======
        region = "us-west-2"
        shared_credentials_file = "~/.aws/credentials"
  	profile  = "profile-name"
>>>>>>> dcaaa1b (tweaks for when vpc exists)
}

resource "aws_instance" "exercise_0000" {
  ami           = "ami-in-your-region"
  instance_type = "t1.micro"
  subnet_id = "sg-subnet-in-your-vpc"
  vpc_security_group_ids = ["sg-security-group-in-your-vpc"]
  tags = {
    Name      = "exercise_0000"
    Terraform = true
  }
}
