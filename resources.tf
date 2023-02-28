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

#module "morsh_sec_group_ya_1" {
#  source               = "./SEC_GROUP"
#  creation_zone_yandex = var.zone_yandex_a
#  network_id           = yandex_vpc_network.morsh-network.id
#  ingress1_cidr_blocks = yandex_vpc_subnet.morsh-subnet-a.v4_cidr_blocks
#  egress1_cidr_blocks  = yandex_vpc_subnet.morsh-subnet-a.v4_cidr_blocks
#}

module "morsh_instance_ya_1" {
  source               = "./INSTANCE"
  source_image         = var.source_image
  vpc_subnet_id        = yandex_vpc_subnet.morsh-subnet-a.id
  creation_zone_yandex = var.zone_yandex_a
  os_disk_size         = var.os_disk_size
  os_disk_type         = "network-hdd"
  prefix               = "server"
  vm_vcpu_qty          = 4
  vm_ram_qty           = 4
  adm_pub_key          = data.ansiblevault_path.ssh_server_pub.value
  useros               = var.useros
}

resource "local_file" "yc_inventory" {
  content  = local.ansible_template
  filename = "${path.module}/yandex_cloud.ini"

  provisioner "local-exec" {
    command     = "Wait-Event -Timeout 60;. ./actions.ps1;ansible-playbook -secret"
    interpreter = ["powershell.exe", "-NoProfile", "-c"]
  }


}


