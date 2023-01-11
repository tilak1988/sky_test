variable "ami_id" {}

variable "instance_type" {}

variable "security_group" {}

variable "my_public_key" {}

variable "subnets" {
    type = list
}
