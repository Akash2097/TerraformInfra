provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 3
  ami           = "ami-0e58b56aa4d64231b"
  instance_type = "t2.medium"
tags = {
    Name = "Test-Server"
  }
}
