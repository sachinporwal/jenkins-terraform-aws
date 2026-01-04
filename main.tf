provider "aws" {
  region = "ap-south-1"
}


resource "aws_vpc" "demo" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "jenkins-vpc"
    }
  
}
