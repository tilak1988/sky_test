output "public_subnets" {
  value = "${aws_subnet.public_subnet.*.id}"
}

output "security1_group" {
  value = "${aws_security_group.test_sg.id}"
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "subnet1" {
  value = "${element(aws_subnet.public_subnet.*.id, 1 )}"
}

output "subnet2" {
  value = "${element(aws_subnet.public_subnet.*.id, 2 )}"
}

output "private_subnet1" {
  value = "${element(aws_subnet.private_subnet.*.id, 1 )}"
}

output "private_subnet2" {
  value = "${element(aws_subnet.private_subnet.*.id, 2 )}"
}

# output "public_ip" {
#   value = "${aws_instance.myexample.public_ip}"
# }

# output "instance_id" {
#   value = "${aws_instance.myexample.id}"
# }

# output "vpc_id" {
#   value = "${aws_vpc.main.id}"
# }

# output "aws_internet_gateway" {
#   value = "${aws_internet_gateway.gw.id}"
# }

# output "security1_group" {
# value = "${aws_security_group.test_sg.id}"
# }

# output "subnets" {
#   value = "${aws_subnet.public_subnet.*.id}"
# }