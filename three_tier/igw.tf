# Creating Internet Gateway 
resource "aws_internet_gateway" "poc_gateway" {
  vpc_id = "${aws_vpc.poc_vpc.id}"
}