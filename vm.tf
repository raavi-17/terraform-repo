resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.small"   # 2 vCPU, 2GB RAM

  subnet_id = aws_subnet.example_subnet2.id

  associate_public_ip_address = true

  tags = {
    Name        = "terraform-ec2-instance"
  }
}