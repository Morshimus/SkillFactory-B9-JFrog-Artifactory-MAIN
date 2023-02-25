output "internal_ip_address_vm_1" {
  value = module.morsh_instance_ya_1.internal_ip_address_morsh_server
}

output "external_ip_address_vm_1" {
  value = module.morsh_instance_ya_1.external_ip_address_morsh_server
}

output "hostname_vm_1" {
  value = module.morsh_instance_ya_1.hostname_morsh_server
}


output "db_user_password" {
  value     = data.ansiblevault_path.db_key.value
  sensitive = true
}

output "morsh_pg_cluster_ya_1_id" {
  value = module.morsh_pg_cluster_ya_1.morsh_yc_id_pg_cluster
}

output "morsh_pg_cluster_ya_1_host_fqdn" {
  value = module.morsh_pg_cluster_ya_1.morsh_fqdn_master_pg_cluster
}


output "morsh_pg_cluster_user_ya_1_name" {
  value = module.morsh_pg_cluster_user_ya_1.morsh_yc_pg_user_name
}


output "morsh_pg_cluster_user_ya_1_id" {
  value = module.morsh_pg_cluster_user_ya_1.morsh_yc_pg_user_id
}


output "morsh_pg_cluster_db_ya_1_name" {
  value = module.morsh_pg_cluster_db_ya_1.morsh_yc_pg_db_name
}


output "morsh_pg_cluster_db_ya_1_id" {
  value = module.morsh_pg_cluster_db_ya_1.morsh_yc_pg_db_id
}