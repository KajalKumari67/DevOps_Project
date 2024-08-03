resource "aws_instance" "frontend" {
  ami                    = "ami-07c8c1b18ca66bb07"
  instance_type          = "t3.micro"
  key_name               = "ssh-keys"
  monitoring             = true
  vpc_security_group_ids = [var.frontend_sg_id]
  subnet_id              = var.public_subnet_id
  tags = {
    Name = "Frontend"
  }
}

resource "aws_instance" "backend" {
  ami                    = "ami-07c8c1b18ca66bb07"
  instance_type          = "t3.micro"
  key_name               = "ssh-keys"
  monitoring             = true
  vpc_security_group_ids = [var.backend_sg_id]
  subnet_id              = var.private_subnet_id
  tags = {
    Name = "Backend"
  }
}
