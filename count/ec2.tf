resource "aws_instance" "db" {
    #count = 3
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ aws_security_group.allowcd_ssh.id ]

    tags = {
        Name = var.instance_names[count.index]
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