resource "aws_subnet" "pub-subnet" {
  vpc_id     = var.vpc-id
  cidr_block = var.pub-sub-cidr[count.index]
  count = length(var.pub-sub-cidr)
  availability_zone = var.pub_az[count.index]

  tags = {
    Name = "pub-sub-${count.index}"
  }
}


resource "aws_subnet" "pirv-subnet" {
  vpc_id     = var.vpc-id
  cidr_block = var.pirv-sub-cidr[count.index]
  count = length(var.pirv-sub-cidr)
  availability_zone = var.pir_az[count.index]


  tags = {
    Name = "pirv-sub-${count.index}"
  }
}


