data "ansiblevault_path" "ssh_server_pub" {
  path = "${path.module}/secrets"
  key  = "adm_pub_key"
}