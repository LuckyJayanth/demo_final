data "aws_ami" "my_ami" {
  most_recent      = true
  owners           = [var.owner-id]

  filter {
    name   = "name"
    values = [var.ami-name]
  }
  filter {
    name   = "root-device-type"
    values = [var.ebi-device-type]
  }

  filter {
    name   = "virtualization-type"
    values = [var.vartualiztion_type]
  }

}

#############################[ BESTION HOST ]################################################

resource "aws_instance" "bestion" {
  ami                           = data.aws_ami.my_ami.id
  instance_type                 = var.ec2_type
  key_name                      = var.key
  subnet_id                     = var.pub_sub[0]
  associate_public_ip_address   = true
  security_groups               = [var.sg_id]

  provisioner "remote-exec" {
    inline = ["echo 'Wait until SSH is ready'"]

    connection {
      type        = "ssh"
      user        = var.ssh_user
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i ${self.public_ip}, --private-key ${var.private_key_path} ${var.file_name}"
  }

  tags = {
    Name = var.bestion
  }
}

# #############################[ PRIVATE_INSTANCES ]################################################

resource "aws_instance" "private_instance" {
  count                         = 1
  ami                           = data.aws_ami.my_ami.id
  instance_type                 = var.ec2_type
  key_name                      = var.key
  subnet_id                     = var.pir_sub[count.index]
  security_groups               = [var.sg_id]


  tags = {
    Name = var.pirv_instance
  }
}
