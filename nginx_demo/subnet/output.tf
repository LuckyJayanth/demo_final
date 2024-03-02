output "pub-sub-out-id" {
  value = aws_subnet.pub-subnet[*].id

}

output "pirv-sub-out-id" {
  value = aws_subnet.pirv-subnet[*].id

}