provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 2
  ami           = "ami-0e58b56aa4d64231b"
  instance_type = "t2.micro"
tags = {
    Name = "Dev-Server"
  }
}
