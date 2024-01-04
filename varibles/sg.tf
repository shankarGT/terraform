resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform refrance only
name        = var.sg-name # this is AWS name
description = var.sg-description
# vpc_id    = aws_vpc.main.id

ingress {
    description      = "Allow All Ports"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

tags = {
    Name = "roboshop-all-aws"
  }
}