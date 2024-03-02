resource "aws_eip" "natgateway" {
 domain = "vpc"
}


#############################[ NAT GATEWAY CREATION ]################################################
resource "aws_nat_gateway" "natgateway" {
  allocation_id     = aws_eip.natgateway.id
  connectivity_type = var.nat_type
  subnet_id         = var.pub_sub_id

  tags ={
    Name= var.nat-name
  }

}