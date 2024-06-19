variable "class" {
  default = "DevOps"
}

output "class" {
  value = upper(var.class)
}

variable fruits {
  default = ["mango", "orange", "avacado", "apple"]
}

output "countOfFruits" {
  value = length(var.fruits)
}

variable classes {
  default = {
    Devops = {
      name = "training"
      topics = ["AWS", "Ansible", "Terraform"]
    }
    AWS = {
      name = "train"
    }
  }
}

output "Dclasses" {
  value = var.classes.Devops["topics"]

}
output "Aclasses" {
  #value = lookup(var.classes.AWS, "topics", "No Topics so far")
  value = lookup(lookup(var.classes, "AWS", null), "topics", "No Topics so far")

}