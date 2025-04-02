resource "aws_instance" "expense" {
    for_each = var.instance_names #each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0d04f16a02489a57e"]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key

        }
    )
}    
