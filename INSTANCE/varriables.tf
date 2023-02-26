
variable "service_account_key" {
  type    = string
  default = "./key.json"
}

variable "creation_zone_yandex" {
  type = string

}


variable "cloud_id" {
  type    = string
  default = "b1gm80drf2f2dk70jc3f"
}


variable "folder_id" {
  type    = string
  default = "b1g16ac5if9cnssnhfip"
}



#variable "vm_name_server" {
#  type    = string
#  default = "morsh_server"
#}

variable "prefix" {
  type    = string
  default = "server"
}

variable "vm_vcpu_type" {
  type    = string
  default = "standard-v2"
}


variable "vm_vcpu_qty" {
  type    = number
  default = 2
}


variable "vm_ram_qty" {
  type    = number
  default = 2
}


variable "vpc_subnet_id" {
  type = string
}


variable "os_disk_type" {
  type    = string
  default = "network-ssd"
}


variable "os_disk_size" {
  type    = string
  default = "5"
}

variable "source_image" {
  type    = string
  default = "lamp"
}

variable "nat_state" {
  type        = bool
  default     = true
  description = "Allow outside access to VM"
}

variable "adm_pub_key" {
  type        = string
  description = "SSH key for access"

}
#variable "group" {
#  type    = string
#  default = "frontend"
#  description = "Which group of host is it?"
#}

variable "useros" {
  type        = string
  description = "Default admin user for server"
  default     = "morsh-adm"
}