resource "aws_instance" "workstation1" {
  ami                    = data.aws_ami.rhel9_devops.id
  instance_type          = "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow-workstation1.id]
  subnet_id                   = "subnet-0c7129aadd03eea72"
  associate_public_ip_address = true
  root_block_device {
    volume_size = 30    # Set the EBS volume size to 30GB
    volume_type = "gp3" # (Optional) Choose volume type (gp2, gp3, io1, etc.)
  }
  tags = {
    Name = "workstation1"
  }
}

resource "aws_security_group" "allow-workstation1" {

  name        = "allow-all-workstation1"
  description = "it allows everyone"
  vpc_id      = "vpc-03cb7ce0bd811647e" 
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

