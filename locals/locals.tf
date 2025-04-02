locals {
    ami_id = "ami-09c813fb71547fc4f"
    sg_id = "sg-0d04f16a02489a57e"
    instance_type = "t3.micro"
    tags = {
        Name = "db"
        createdby = "sam"
    }
}