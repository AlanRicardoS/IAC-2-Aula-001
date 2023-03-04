
resource "aws_lb" "load_balancer" {
  name               = "LoadBalancer-${local.project_name}"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.private_subnet[0].id, aws_subnet.private_subnet[1].id]
  security_groups    = [aws_security_group.load_balancer_security_group.id]

  tags = {
    "Name" = "LoadBalancer-${local.project_name}"
  }
}