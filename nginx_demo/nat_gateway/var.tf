variable "nat_type" {
  type        = string
  default = "public"
}

variable "nat-name" {
  type        = string
}

variable "pub_sub_id" {
  type = string
  default = "xyx"
  description = "public subnet id"
}

variable "pirv_sub_id" {
  type = string
  default = "xyx"
  description = "pirvate subnet id"
}