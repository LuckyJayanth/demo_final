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




# resource "aws_instance" "private_instance" {
#   count                         = 1
#   ami                           = data.aws_ami.my_ami.id
#   instance_type                 = var.ec2_type
#   key_name                      = var.key
#   subnet_id                     = var.pir_sub[count.index]
#   security_groups               = [var.sg_id]


#  provisioner "remote-exec" {
#   inline = [
#   "echo 'Wait until SSH is ready'",
#   "sleep 60",
# ]
  
#   connection {
#     type        = "ssh"
#     user        = var.ssh_user
#     private_key = file(var.private_key_path)
#     host                = aws_instance.private_instance[0].private_ip
#     bastion_host        = aws_instance.bestion[0].public_ip
#     bastion_user        = var.ssh_user
#     bastion_private_key = file(var.private_key_path)
#     agent               = true
#     timeout             = "10m"

    
#   }

# }

#   provisioner "local-exec" {
    
#     command = "ansible-playbook  -i ${aws_instance.bestion[1].public_ip}, --private-key ${var.private_key_path}  ${var.node_file_name}"
#   }



#   tags = {
#     Name = var.pirv_instance
#   }
# }
# # resource "null_resource" "ansible_trigger" {
# #   depends_on = [aws_instance.private_instance]

# #   provisioner "local-exec" {
# #     command = <<EOT
# #       ansible-playbook \
# #         -i "${aws_instance.private_instance[0].private_ip}," \
# #         --private-key "${var.private_key_path}" \
# #         --extra-vars "ansible_ssh_common_args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null' -o ForwardAgent=yes" \
# #         ${var.node_file_name}
# #     EOT
# #   }
