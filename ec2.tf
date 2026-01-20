resource "aws_instance" "server1" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public1.id

  tags = { Name = "server-1" }
}

resource "aws_instance" "server2" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public2.id

  tags = { Name = "server-2" }
}

resource "aws_instance" "server3" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public3.id

  tags = { Name = "server-3" }
}
