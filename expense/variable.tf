variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
  
}
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


variable "common_tags" {
    default = {
        project = "expense"
        env = "dev"
        Module = "DB"
        terraform = "true"
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

variable "zone_id" {
    default = "Z0069700281SUZLWD2H6T"
}

variable "domain_name" {
    default = "mydaws.online"
}