resource "aws_instance" "CDAAS" {
  ami           = "ami-04e601abe3e1a910f" 
  instance_type = "t3.medium"
  count = 2

  vpc_security_group_ids = [aws_security_group.app-server-SG.id]
  subnet_id              = "subnet-38325c52"
  key_name               = "pfops"
  associate_public_ip_address = true
  user_data = file("./modules/EC2/userdata.sh")

  tags = {
    Name = "CDAAS"
  }
}

resource "aws_security_group" "app-server-SG" {
  name        = "app-server-SG"
  description = "Security group for the app-server-SG"

  vpc_id = "vpc-4b4bcc21"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # Allow SSH access from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # Allow 8080 access from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]   # Allow all outbound traffic
  }
}
