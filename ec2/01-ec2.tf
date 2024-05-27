resource "aws_security_group" "allow_tf" {
  name = "allow_tf"
  description = "creating security group to practice terraform"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow_tf"
    Created by = "Rayudu"
  }
}