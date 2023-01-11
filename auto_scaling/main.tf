provider "aws" {
  region = "us-west-2"
}

resource "aws_launch_configuration" "my-test-launch-config" {
  #image_id        = "ami-02a28a4aa336a6b81"
  image_id        = "${var.ami_id}"
  #instance_type   = "t2.micro"
  instance_type   = "${var.instance_type}"
  #key_name        = "devops"
  key_name        = "${var.key_id}"
  security_groups = ["${aws_security_group.my-asg-sg.id}"]
  associate_public_ip_address = false

  # user_data = <<-EOF
  #             #!/bin/bash
  #             sudo apt update
  #             sudo apt install apache2
  #             echo "This task is performed for the second round interview at SKY using Terraform" > /var/www/html/index.html
  #             sudo systemctl start apache2
  #             sudo systemctl enable apache2
  #             EOF

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "example" {
  launch_configuration = "${aws_launch_configuration.my-test-launch-config.name}"
  vpc_zone_identifier  = ["${var.subnet1}","${var.subnet2 }"]
  target_group_arns    = ["${var.target_group_arn}"]
  health_check_type    = "ELB"

  min_size = 2
  max_size = 5

  tag {
    key                 = "Name"
    value               = "my-test-asg"
    propagate_at_launch = true
  }
}

resource "aws_security_group" "my-asg-sg" {
  name   = "my-asg-sg"
  vpc_id = "${var.vpc_id}"
}

resource "aws_security_group_rule" "inbound_ssh" {
  from_port         = 22
  protocol          = "tcp"
  security_group_id = "${aws_security_group.my-asg-sg.id}"
  to_port           = 22
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "inbound_http" {
  from_port         = 80
  protocol          = "tcp"
  security_group_id = "${aws_security_group.my-asg-sg.id}"
  to_port           = 80
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "outbound_all" {
  from_port         = 0
  protocol          = "-1"
  security_group_id = "${aws_security_group.my-asg-sg.id}"
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}
