# ----------------------------
# EC2 + MongoDB Module
# ----------------------------

resource "aws_security_group" "mongo_sg" {
  name   = "wiz-mongo-sg"
  vpc_id = var.vpc_id

  # Open MongoDB to the world (intentionally insecure)
  ingress {
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH for admin access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "wiz-mongo-sg"
  }
}

resource "aws_instance" "mongo" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.mongo_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum install -y docker
              systemctl start docker
              docker run -d -p 27017:27017 --name mongo mongo:5.0
              EOF

  tags = {
    Name = "wiz-ec2-mongo"
  }
}
