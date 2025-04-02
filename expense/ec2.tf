resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allowcd_ssh.id]
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"

    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]

        }
    )
}    

resource "aws_security_group" "allowcd_ssh" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.allow_cidr
        }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.allow_cidr
        }

    tags = {
        Name = "allow_ssh"
        createdby = "sam"

    }
}

