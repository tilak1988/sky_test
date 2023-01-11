variable "vpc_cidr" {
  #default = "10.0.0.0/16"
}

variable "public_cidrs" {
  type = list
  #default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_cidrs" {
  type = list
}


# variable "region" {
#   type = string
#   default = "us-west-2"
# }

# variable "ami" {
#   type = string
#   default = "ami-03f8756d29f0b5f21"
# }

# variable "instance_type" {
#   type = string
#   default = "t2.micro"
# }