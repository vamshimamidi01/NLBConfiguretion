resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = { Name = "public-subnet-1" }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = { Name = "public-subnet-2" }
}

resource "aws_subnet" "public3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-south-1c"
  map_public_ip_on_launch = true
  tags = { Name = "public-subnet-3" }
}

# resource "aws_route_table_association" "rta1" {
#   subnet_id      = aws_subnet.public1.id
#   route_table_id = aws_route_table.public_rt.id
# }

# resource "aws_route_table_association" "rta2" {
#   subnet_id      = aws_subnet.public2.id
#   route_table_id = aws_route_table.public_rt.id
# }

# resource "aws_route_table_association" "rta3" {
#   subnet_id      = aws_subnet.public3.id
#   route_table_id = aws_route_table.public_rt.id
# }
