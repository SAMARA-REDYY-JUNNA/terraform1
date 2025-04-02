# locals {
#     record_name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"

# }