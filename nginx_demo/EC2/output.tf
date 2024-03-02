output "bestion_out" {
  value = aws_instance.bestion[*].id
}

output "private_instance_out" {
  value = aws_instance.private_instance[*].id
}
