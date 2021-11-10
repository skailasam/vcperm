variable "type" {

}
variable "perms" {

}
variable "path" {

}

data "vsphere_folder" "folder1" {
  path = var.path
}


# this doesn't work as expected

# data "vsphere_role" "role1" {
#   for_each = toset([for i in var.perms : i.role])
#   label    = each.key
# }


# resource "vsphere_entity_permissions" "p1" {
#   entity_id   = data.vsphere_folder.folder1.id
#   entity_type = "Folder"
#   dynamic "permissions" {
#     for_each = var.perms
#     content {
#       user_or_group = permissions.value["user_or_group"]
#       is_group      = permissions.value["is_group"]
#       propagate     = permissions.value["propagate"]
#       role_id       = data.vsphere_role.role1.id
#       #data.vsphere_role.role1[each.key].id
#       #data.vsphere_role.role1.id
#     }
#   }
# }




###
output "my_module_objects" {
  value = var.path
}
