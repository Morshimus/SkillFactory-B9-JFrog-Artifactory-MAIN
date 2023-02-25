variable "network_name_yandex" {
  type        = string
  description = "Created netowork in yandex.cloud name"
}

variable "service_account_key_yandex" {
  type        = string
  default     = "./key.json"
  description = "Local storing service key. Not in git tracking"
}

variable "zone_yandex_a" {
  type        = string
  default     = "ru-central1-a"
  description = "Zone of 1st instance in yandex cloud"
}


#variable "zone_yandex_b" {
#  type        = string
#  default     = "ru-central1-a"
#  description = "Zone of 2nd instance in yandex cloud"
#}

variable "subnet_a_name_yandex" {
  type        = string
  default     = "morsh-subnet-a"
  description = "Subnet for 1st instance"

}

variable "subnet_a_v4_cidr_blocks_yandex" {
  type        = list(string)
  default     = ["192.168.21.0/28"]
  description = "IPv4 network for 1st instance subnet"
}

variable "subnet_a_description_yandex" {
  type    = string
  default = "Subnet A for morshimus instance A"
}

#variable "subnet_b_name_yandex" {
#  type        = string
#  default     = "morsh-subnet-b"
#  description = "Subnet for 2nd instance"
#}

#variable "subnet_b_v4_cidr_blocks_yandex" {
#  type        = list(string)
#  default     = ["192.168.22.0/28"]
# description = "IPv4 network for 2st instance subnet"
#}

#variable "subnet_b_description_yandex" {
#  type    = string
#  default = "Subnet B for morshimus instance B"

#}


variable "cloud_id_yandex" {
  type        = string
  description = "Cloud id of yandex.cloud provider"
}


variable "folder_id_yandex" {
  type        = string
  description = "Folder id of yandex.cloud provider"
}


variable "os_disk_size" {
  type        = string
  default     = "50"
  description = "Size of required vm"

}


variable "source_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "OS family of image"
}

variable "useros" {
  type        = string
  default     = "ubuntu"
  description = "OS native default user"
}
