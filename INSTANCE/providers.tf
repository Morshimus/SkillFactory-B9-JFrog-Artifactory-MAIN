provider "yandex" {
  zone                     = var.creation_zone_yandex
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  service_account_key_file = var.service_account_key
}

