resource "aws_security_group" "allowcd_ssh" {
    name = "allow_ssh"
    description = "Allow 22,80,8080,3306 access"

    dynamic "ingress" {
        for_each = var.inbound_rule
        content{
            from_port = ingress.value["port"]
            to_port = ingress.value["port"]
            protocol = ingress.value["protocol"]
            cidr_blocks = ingress.value["allowed_cidr"]
        }    
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ports"
        createdby = "sam"

    }
}