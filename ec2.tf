resource "aws_instance" "myfirst_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid Windows AMI ID
  instance_type = "t2.micro"
  key_name      =  "vockey"

  tags = {
    Name = "myFirstInstance"
    OS   = "Linux"
  }
}