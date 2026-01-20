resource "aws_lb" "nlb" {
  name               = "my-nlb"
  load_balancer_type = "network"

  subnets = [
    aws_subnet.public1.id,
    aws_subnet.public2.id,
    aws_subnet.public3.id
  ]

  tags = {
    Name = "my-nlb"
  }
}
