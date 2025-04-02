variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "Instance type"
}


variable "instance_name" {
    default = "db"
}