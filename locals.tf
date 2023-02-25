locals {


  ansible_template = templatefile(
    "${path.module}/templates/ansible_inventory_template.tpl",
    {
      user         = var.useros,
      ip           = module.morsh_instance_ya_1.external_ip_address_morsh_server,
      hostname     = module.morsh_instance_ya_1.hostname_morsh_server
    }
  )

  loc_path = "${path.module}/"

  sec_group = [module.morsh_sec_group_ya_1.morsh_yc_sec_group_id]
}