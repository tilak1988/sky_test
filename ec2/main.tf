provider "aws" {
  region = "us-west-2"
}

data "aws_availability_zones" "available" {}

resource "aws_instance" "my-test-instance" {
  count                  = 2
 #ami                    = "ami-0f9d9a251c1a44858"
  ami                    = "${var.ami_id}"  
  instance_type          = "${var.instance_type}"
  key_name               = "devops"
  vpc_security_group_ids = ["${var.security_group}"]
  subnet_id              = "${element(var.subnets, count.index )}"
  user_data              = "${data.template_file.init.rendered}"

  tags = {
    Name = "my-instance-${count.index + 1}"
  }
}

# resource "aws_key_pair" "mytest-key" {
#   key_name   = "my-test-terraform-key-new1"
#   public_key = "${file(var.my_public_key)}"
# }

data "template_file" "init" {
  template = "${file("${path.module}/userdata.tpl")}"
}
















































# data "aws_ami" "centos" {
#   owners      = ["679593333241"]
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["CentOS-7-2111-20220825_1.*"]
#   }

#   filter {
#     name   = "architecture"
#     values = ["x86_64"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }
# }

# resource "aws_instance" "web_server" {
#   # Ubuntu
#   ami           = "ami-07ffb2f4d65357b42" 
#   # RHEL
#   # ami           = "ami-0f9d9a251c1a44858"

#   instance_type = "t2.micro"
#   key_name = "devops"
# }