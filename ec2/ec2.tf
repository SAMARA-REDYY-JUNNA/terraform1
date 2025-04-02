resource "aws_instance" "db" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allowcd_ssh.id]
    instance_type = "t3.micro"
    tags = {
        Name = "db"
        createdby = "sam"
    }
}    

resource "aws_security_group" "allowcd_ssh" {
    name = "allow_ssh"
    description = "Allow SSH inbound traffic"

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

    tags = {
        Name = "allow_ssh"
        createdby = "sam"

    }
}

