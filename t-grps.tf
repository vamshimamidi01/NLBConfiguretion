resource "aws_lb_target_group" "tg_80" {
  name        = "TG-TCP-80"
  port        = 80
  protocol    = "TCP"
  vpc_id      = aws_vpc.main.id
  target_type = "instance"
}

resource "aws_lb_target_group" "tg_22" {
  name        = "TG-TCP-22"
  port        = 22
  protocol    = "TCP"
  vpc_id      = aws_vpc.main.id
  target_type = "instance"
}

resource "aws_lb_target_group_attachment" "tg80_1" {
  target_group_arn = aws_lb_target_group.tg_80.arn
  target_id        = aws_instance.server1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg80_2" {
  target_group_arn = aws_lb_target_group.tg_80.arn
  target_id        = aws_instance.server2.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg80_3" {
  target_group_arn = aws_lb_target_group.tg_80.arn
  target_id        = aws_instance.server3.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg22_1" {
  target_group_arn = aws_lb_target_group.tg_22.arn
  target_id        = aws_instance.server1.id
  port             = 22
}

resource "aws_lb_target_group_attachment" "tg22_2" {
  target_group_arn = aws_lb_target_group.tg_22.arn
  target_id        = aws_instance.server2.id
  port             = 22
}

resource "aws_lb_target_group_attachment" "tg22_3" {
  target_group_arn = aws_lb_target_group.tg_22.arn
  target_id        = aws_instance.server3.id
  port             = 22
}
