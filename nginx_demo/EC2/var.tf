variable "pub_sub" {
  type = list(string)
  default = ["xyx","cvy"]
  description = "pub subnet ids "
}

variable "pir_sub" {
 type = list(string)
  default = ["xyx","cvy"]
  description = "private  subnet ids "
}




variable "type" {
  type        = string
  default = "t2.micro"
  description = "instance type"
}



variable "ec2_type" {
  type        = string
  default = "t2.micro"
  description = "instance type"
}

variable "key" {
  type        = string
  default = "ohio_key"
  description = "key pair name"
}



variable "bestion" {
  type        = string
  default = "bestion_host"
  description = "name for bestion host"
}

variable "pirv_instance" {
  type        = string
  default = "pirv_instance"
  description = "name for private server"
}

variable "sg_port" {
  type        = number
  default = 22
  description = "ssh port 22 for connection "
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

variable "sg_id" {
  type        = string
  default = "xxx"
  description = "source for connection"
}

variable "vpc_id" {
  type = string
  default = "xyx"
  description = "vpc id "
}

variable "owner-id" {
  type = string
  default = "xyx"
  description = "ami owner id"
}

variable "ami-name" {
  type = string
  default = "xyx"
  description = "ami owner id"
}

variable "ebi-device-type" {
  type = string
  default = "xyx"
  description = "ebs volume type"
}

variable "vartualiztion_type" {
  type = string
  default = "xyx"
  description = "virtualiztion type for ami"
}

variable "ssh_user" {
type        = string
  
}

variable "private_key_path" {
type        = string
}

variable "file_name" {
type        = string
}

