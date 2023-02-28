data "ansiblevault_path" "ssh_server_pub" {
  path = "${path.module}/secrets.yml"
  key  = "adm_pub_key"
}

data "ansiblevault_path" "jfrog_artifacory_super_user" {
  path = "${path.module}/secrets.yml"
  key  = "jfrog_artifactory_username"
}

data "ansiblevault_path" "jfrog_artifacory_super_user_password" {
  path = "${path.module}/secrets.yml"
  key  = "jfrog_artifactory_password"
}