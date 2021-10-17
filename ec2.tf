terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.34.0,<=3.35.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "/var/lib/jenkins/.aws/credentials"
  profile = "jenkins"
}

resource "aws_instance" "my-first-ec2" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t3.micro"
  tags = {
    Name  = "myec2-1"
    Owner = "Vakhob"
  }
}

resource "aws_instance" "my-second-ec2" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t3.micro"
  tags = {
    Name  = "myec2-2"
    Owner = "Vakhob"
  }
}
