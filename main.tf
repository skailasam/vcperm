
terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.0.2"
    }
  }
}
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
}
variable "vsphere_server" {
  description = "vSphere vCenter URL"
  default = "OURVCENTER.LOCAL"
}
variable "vsphere_user" {
  description = "vSphere username"
  default = "OURVCUSER@vsphere.local"
}
variable "vsphere_password" {
  description = "vSphere password"
  sensitive   = true
}

variable "objects" {
  
}


module "perm" {
  source = "./perm"
  for_each = var.objects
  type = each.value.type
  path = each.value.path
  perms = each.value.perms
  
}



#### debug
output "my_objects" {
  #value = local.objects
  value = var.objects
}

# output "my_module_objects" {
#   value = module.perm
# }
