provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "myinstance" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    security_groups = [aws_security_group.myvirusg.id]

    tags = {
        Name = "viraj-ec2"
    }
}

resource "aws_security_group" "myvirusg" {
    name = "http-allow"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}