resource "aws_security_group" "ninja_SG" {
  name   = var.sg-name
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = var.sg_protocol
      cidr_blocks = [var.sg_cidr]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.sg_protocol-egress
    cidr_blocks = [var.sg_cidr]
  }

  tags = {
    Name = var.sg-name
  }
}
