# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "poc_instance1" {
  ami                         = "ami-08a4b40f2fe1e4b35"
  instance_type               = "t3.micro"
  count                       = 1
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.poc_sg.id}"]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "My Public Instance 1"
  }
}

# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "poc_instance2" {
  ami                         = "ami-08a4b40f2fe1e4b35"
  instance_type               = "t3.micro"
  count                       = 1
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.poc_sg.id}"]
  subnet_id                   = aws_subnet.public-subnet-2.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "My Public Instance 2"
  }
}
