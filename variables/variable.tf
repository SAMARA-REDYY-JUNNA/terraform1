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


variable "tags" {
    default = {
        project = "expense"
        env = "dev"
        Name = "db"
        module = "db"

    }
}

variable "sg_name" {
    default = "allow_ssh"
  
}

variable "sg_description" {
    default = "Allow port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allow_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}