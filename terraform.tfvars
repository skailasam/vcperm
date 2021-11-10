objects = {

  obj1 = {
    type = "Folder"
    path = "terraform-test-folder"
    perms = [
      {
        user_or_group = "OURAD\\id-sd-pks-cust-a-1"
        is_group      = true
        propagate     = true
        role          = "cback"
      }
    ]
  }

  obj2 = {
    type = "Folder"
    path = "terraform-test-folder-2"
    perms = [
      {
        user_or_group = "OURAD\\id-sd-pks-cust-a-1"
        is_group      = true
        propagate     = true
        role          = "cback"
      },
      {
        user_or_group = "OURAD\\id-sd-vm-pks-cust-a-2"
        is_group      = true
        propagate     = true
        role          = "cback"
      }
    ]
  }

}
