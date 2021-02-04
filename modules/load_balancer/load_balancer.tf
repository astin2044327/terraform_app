# Create a new load balancer
resource "aws_elb" "mero_elb" {
  name               = "mero_elb"
  availability_zones = var.availability_zones


  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port      = 8000
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"

  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  instances                   = aws_instance.terraform_test.id
  cross_zone_load_balancing   = var.cross_zone_load_balancing
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "mero_elb"
  }
  
}
