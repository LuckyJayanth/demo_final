variable "vpc-id" {
  type = string
  default = "xyx"
  description = "vpc id "
}




variable "igw" {
  type = string
  default = "xyx"
  description = "internt gateway "
}

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

variable "nat_id" {
  type = string
  default = "xyx"
  description = "nat gatway"
}



variable "rt_ip" {
  type        = string
  default = "0.0.0.0/0"
  description = "ip for public route - internet gateway"
}

variable "pvt_rt_ip" {
  type        = string
  default = "0.0.0.0/0"
  description = "ip for private route - internet gateway"
}

variable "rt_name" {
  type        = string
  default = "ninja-route-pub-01"
  description = "public route table"
}

variable "pir-rt-name" {
  type        = string
  default = "ninja-route-priv-01"
  description = "private route table"
}