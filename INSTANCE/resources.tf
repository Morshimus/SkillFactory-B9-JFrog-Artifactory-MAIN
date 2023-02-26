resource "yandex_compute_instance" "morsh_server" {
  platform_id               = var.vm_vcpu_type
  name                      = "morsh-${var.prefix}-${var.source_image}"
  allow_stopping_for_update = true
  labels                    = local.labels



  lifecycle {
    ignore_changes = [
      name,
      labels
    ]
  }

  timeouts {
    create = "60m"
  }

  resources {
    gpus   = 0
    cores  = var.vm_vcpu_qty
    memory = var.vm_ram_qty
  }

  boot_disk {
    auto_delete = true
    initialize_params {
      image_id = data.yandex_compute_image.image.id
      size     = var.os_disk_size
      type     = var.os_disk_type
    }
  }

  metadata = {
    "user-data" : "#cloud-config\nusers:\n  - name: ${var.useros}\n    groups: sudo\n    shell: /bin/bash\n    sudo: ['ALL=(ALL) NOPASSWD:ALL']\n    ssh-authorized-keys:\n      - ${var.adm_pub_key}"
  }

  network_interface {
    subnet_id          = var.vpc_subnet_id
    security_group_ids = []
    nat                = var.nat_state

  }
}
