resource "yandex_vpc_network" "morsh-network" {
  name = var.network_name_yandex

}


resource "yandex_vpc_subnet" "morsh-subnet-a" {
  name           = var.subnet_a_name_yandex
  description    = var.subnet_a_description_yandex
  v4_cidr_blocks = var.subnet_a_v4_cidr_blocks_yandex
  zone           = var.zone_yandex_a
  network_id     = yandex_vpc_network.morsh-network.id

}


#resource "yandex_vpc_subnet" "morsh-subnet-b" {
#  name           = var.subnet_b_name_yandex
#  description    = var.subnet_b_description_yandex
#  v4_cidr_blocks = var.subnet_b_v4_cidr_blocks_yandex
#  zone           = var.zone_yandex_b
#  network_id     = yandex_vpc_network.morsh-network.id

#}

module "morsh_sec_group_ya_1" {
  source               = "./SEC_GROUP"
  creation_zone_yandex = var.zone_yandex_a
  network_id           = yandex_vpc_network.morsh-network.id
  ingress1_cidr_blocks = yandex_vpc_subnet.morsh-subnet-a.v4_cidr_blocks
  egress1_cidr_blocks  = yandex_vpc_subnet.morsh-subnet-a.v4_cidr_blocks
}

module "morsh_instance_ya_1" {
  source               = "./INSTANCE"
  source_image         = var.source_image
  vpc_subnet_id        = yandex_vpc_subnet.morsh-subnet-a.id
  creation_zone_yandex = var.zone_yandex_a
  os_disk_size         = var.os_disk_size
  os_disk_type         = "network-hdd"
  prefix               = "server"
}


module "morsh_pg_cluster_ya_1" {
  source               = "./MDB_POSTGRESQL_CLUSTER"
  vpc_subnet_id        = yandex_vpc_subnet.morsh-subnet-a.id
  creation_zone_yandex = var.zone_yandex_a
  network_id           = yandex_vpc_network.morsh-network.id
  sec_group            = local.sec_group
  pg_version           = var.pg_version
}

module "morsh_pg_cluster_user_ya_1" {
  source               = "./MDB_POSTGRESQL_DATABASE_USER"
  creation_zone_yandex = var.zone_yandex_a
  db_user_password     = data.ansiblevault_path.db_key.value
  pg_cluster_id        = module.morsh_pg_cluster_ya_1.morsh_yc_id_pg_cluster
}

module "morsh_pg_cluster_db_ya_1" {
  source               = "./MDB_POSTGRESQL_DATABASE"
  creation_zone_yandex = var.zone_yandex_a
  pg_owner_name        = module.morsh_pg_cluster_user_ya_1.morsh_yc_pg_user_name
  pg_cluster_id        = module.morsh_pg_cluster_ya_1.morsh_yc_id_pg_cluster
}


resource "local_file" "yc_inventory" {
  content  = local.ansible_template
  filename = "${path.module}/yandex_cloud.ini"


  provisioner "local-exec" {
    command     = "Wait-Event -Timeout 60;. ./actions.ps1;ansible-playbook -secret;ansible-playbook -secret  -tagTST -tagPRD"
    interpreter = ["powershell.exe", "-NoProfile", "-c"]
  }

}


