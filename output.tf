output "internal_ip_address_vm_1" {
  value = module.morsh_instance_ya_1.internal_ip_address_morsh_server
}

output "external_ip_address_vm_1" {
  value = module.morsh_instance_ya_1.external_ip_address_morsh_server
}

output "hostname_vm_1" {
  value = module.morsh_instance_ya_1.hostname_morsh_server
}


output "ssh_key_server_pub" {
  value     = data.ansiblevault_path.ssh_server_pub.value
  sensitive = true
}

output "jfrog_artifactory_super_admin_user" {
  value = data.ansiblevault_path.jfrog_artifacory_super_user.value
}

output "jfrog_artifactory_super_admin_password" {
  value     = data.ansiblevault_path.jfrog_artifacory_super_user_password.value
  sensitive = true
}
