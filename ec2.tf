resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  monitoring = var.monitoring

  tags = {
    Name = "HelloWorld"
  }
  
}



