provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-server" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name      = "lab"
  subnet_id     = "subnet-03e8e04cfd51b7fb3"
  tags = {
    Name = "demo-server"
  }
}
