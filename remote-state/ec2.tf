resource "aws_instance" "db" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0d04f16a02489a57e"]
    instance_type = "t3.micro"
    tags = {
        Name = "db"
        createdby = "sam"
    }
} 