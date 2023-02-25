output "internal_ip_address_morsh_bastion" {
  value = yandex_compute_instance.morsh_bastion.network_interface[0].ip_address
}

output "external_ip_address_morsh_bastion" {
  value = yandex_compute_instance.morsh_bastion.network_interface[0].nat_ip_address
}


output "hostname_morsh_bastion" {
  value = yandex_compute_instance.morsh_bastion.name
}