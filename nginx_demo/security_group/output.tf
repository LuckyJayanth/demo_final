output "sg_out" {
  value = aws_security_group.ninja_SG.id
  description = "security group id"
}