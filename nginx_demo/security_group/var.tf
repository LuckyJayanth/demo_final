variable "sg-name" {
  type        = string
  default = "ninja-sg"
  description = "security group name"
}
variable "sg_ports" {
  type        = list(number)
  default = [22 ,443,9090,9091,9092,80]
  description = "ports for connection "
}

variable "sg_protocol" {
  type        = string
  default = "TCP"
  description = "TCP protocol for connection "
}


variable "sg_cidr" {
  type        = string
  default = "0.0.0.0/0"
  description = "source for connection"
}


variable "sg_protocol-egress" {
  type        = string
  default = "-1"
  description = "egress protocal"
}


variable "sg_id" {
  type        = list(string)
  default = ["aws_security_group.ninja-SG.id"]
  description = "source for connection"
}

variable "vpc_id" {
  type = string
  default = "xyx"
  description = "vpc id "
}