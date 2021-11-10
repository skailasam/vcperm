# vcperm
set vcenter permissions through terraform


## Goal
Set vcenter permission declared in terraform.tf on vsphere objects (folder, network, storage)
It should be possible to have mor then one permisson on a object (ex. user1 has "readonly", user2 has "admin")

## Way
From Main, call a module for each object. In the module set all needed permissons on this object. 

## Issues
- wrong datatypes from nested objects in foreach definitions
- how to get the ressource and data in the module in sync

## Links
https://www.terraform.io/docs/language/functions/setproduct.html#finding-combinations-for-for_each
https://www.terraform.io/docs/language/meta-arguments/for_each.html
https://www.terraform.io/docs/language/expressions/for.html