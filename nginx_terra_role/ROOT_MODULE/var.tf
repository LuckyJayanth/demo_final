######################[PROVIDER VARIABLE]#############################
variable "aws-region" {
type        = string
default = "us-east-2"
description = "region for creating vpc infrastructure"
  
}



######################[ VPC VARIABLES]#############################

variable "vpc-cidr2" {
  type        = string
  default = "10.0.0.0/16"
  description = "vpc cidr range"
}

variable "vpc-name2" {
  type        = string
  default     = "tool_vpc"
  description = "private instance name"
}

variable "vpc-region2" {
type        = string
default = "us-east-2"
description = "region for creating vpc infrastructure"
  
}


######################[SUBNET VARIABLE]#############################
variable "pub-sub-cidr2" {
   type = list(string)
   default = ["10.0.2.0/28","10.0.8.0/28"]
   description = "cidr for public subnets"

}


variable "pirv-sub-cidr2" {
   type = list(string)
   default = ["10.0.16.0/28","10.0.22.0/28"]
   description = "cidr range for private subnets"
}

variable "pub_az2" {
   type = list(string)
   default = ["us-east-2a","us-east-2b"]
   description = "availability zone for public subnet"
}

variable "pir_az2" {
   type = list(string)
   default = ["us-east-2a","us-east-2b"]
   description = "availability zone for private subnet"
}

######################[ INTERNET GATEWAY VARIABLE ]#############################

variable "igw-name2" {
  type        = string
  default = "tool_ig"
  description = "name for internet  gateway"
}




######################[NAT GATEWAY VARIABLE]#############################

variable "nat-name2" {
  type        = string
  default = "Ninja-nat-01"
  description = "name for nat gateway"
}


######################[ROUTE TABLE VARIABLE]#############################

variable "rt_ip2" {
  type        = string
  default = "0.0.0.0/0"
  description = "name for nat gateway"
}



######################[SECURITY GROUP VARIABLE]#############################
variable "sg-name2" {
  type        = string
  default     = "tool-sg"
  description = "security group name"
}

variable "sg_ports2" {
  type        = list(number)
  default     = [22,443,80,90,9090,8080,9200,9093,9115]
  description = "security group ports rule "
}

variable "sg_protocol2" {
  type        = string
  default     = "tcp"
  description = "security group protocol"
}


variable "sg_cidr2" {
  type        = string
  default     = "0.0.0.0/0"
  description = "cidr range for allowing traffic"
}

variable "sg_protocol-egress2" {
  type        = string
  default     = "-1"
  description = "security outgoing rule"
}





######################[INSTANCES VARIABLE]#############################
variable "priv_EC2_name" {
  type        = string
  default     = "private server"
  description = "private instance name"
}

variable "ami_type2" {
  type        = string
  default     = "t2.micro"
  description = "image type"

}

variable "owner-id2" {
  type        = string
  default     = "099720109477"
  description = "image of ubuntu 20 version "

}


variable "ami-name2" {
  type        = string
  default     = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20231025"
  description = "image of ubuntu 20 version "

}



variable "ec2_type2" {
  type        = string
  default     = "t2.micro"
  description = "instance type"
}

variable "ebi-device-type2" {
  type        = string
  default     = "ebs"
  description = "ebs volume type"
}


variable "vartualiztion_type2" {
  type        = string
  default     = "hvm"
  description = "virtualization-type"
}



######################[ANSIBLE VARIABLE]#############################

variable "ssh_user2" {
  type        = string
  default     = "ubuntu"
  description = "username of machine"
}

variable "private_key_path_2" {
  type        = string
  default     = "/var/lib/jenkins/ohio.pem"
  description = "ssh key path"
}

variable "file_name2" {
  type        = string
  default     = "nginx_roles.yml"
  description = "ansible role play"
}

variable "bestion_name" {
  type        = string
  default     = "Public server"
  description = "bestion server"
}

variable "pirv_instance_name" {
  type        = string
  default     = "Private server"
  description = "private instance"
}

variable "key2" {
  type        = string
  default     = "ohio"
  description = "key name"
}


