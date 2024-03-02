variable "vpc-id" {
  type        = string
}

variable "pub_az" {
   type = list(string)
   default = ["us-east-1a","us-east-1b"]
   description = "availability zone for public subnet"
}

variable "pir_az" {
   type = list(string)
   default = ["us-east-1a","us-east-1b"]
   description = "availability zone for public subnet"
}

variable "pub-sub-cidr" {
  
  type = list(string)
}


variable "pirv-sub-cidr" {
  
  type = list(string)
}

