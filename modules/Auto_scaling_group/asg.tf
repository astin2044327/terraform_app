resource "aws_launch_template" "mero_launchTemplate" {
  name_prefix   = "mero_launchTemplate"
  image_id      = ""
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "mero_asg" {
  availability_zones = var.availability_zones
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.mero_launchTemplate.id
      }

      override {
        instance_type     = "t2.micro"
        weighted_capacity = "3"
      }

      override {
        instance_type     = "t2.small"
        weighted_capacity = "2"
      }
    }
  }
}
