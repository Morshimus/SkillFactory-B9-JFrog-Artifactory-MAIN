# INSTANCE

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.5 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | ~> 0.84.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.84.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.morsh_server](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [yandex_compute_image.image](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adm_pub_key"></a> [adm\_pub\_key](#input\_adm\_pub\_key) | SSH key for access | `string` | n/a | yes |
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | n/a | `string` | `"b1gm80drf2f2dk70jc3f"` | no |
| <a name="input_creation_zone_yandex"></a> [creation\_zone\_yandex](#input\_creation\_zone\_yandex) | n/a | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `string` | `"b1g16ac5if9cnssnhfip"` | no |
| <a name="input_nat_state"></a> [nat\_state](#input\_nat\_state) | Allow outside access to VM | `bool` | `true` | no |
| <a name="input_os_disk_size"></a> [os\_disk\_size](#input\_os\_disk\_size) | n/a | `string` | `"5"` | no |
| <a name="input_os_disk_type"></a> [os\_disk\_type](#input\_os\_disk\_type) | n/a | `string` | `"network-ssd"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `"server"` | no |
| <a name="input_service_account_key"></a> [service\_account\_key](#input\_service\_account\_key) | n/a | `string` | `"./key.json"` | no |
| <a name="input_source_image"></a> [source\_image](#input\_source\_image) | n/a | `string` | `"lamp"` | no |
| <a name="input_useros"></a> [useros](#input\_useros) | Default admin user for server | `string` | `"morsh-adm"` | no |
| <a name="input_vm_ram_qty"></a> [vm\_ram\_qty](#input\_vm\_ram\_qty) | n/a | `number` | `2` | no |
| <a name="input_vm_vcpu_qty"></a> [vm\_vcpu\_qty](#input\_vm\_vcpu\_qty) | n/a | `number` | `2` | no |
| <a name="input_vm_vcpu_type"></a> [vm\_vcpu\_type](#input\_vm\_vcpu\_type) | n/a | `string` | `"standard-v2"` | no |
| <a name="input_vpc_subnet_id"></a> [vpc\_subnet\_id](#input\_vpc\_subnet\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_morsh_server"></a> [external\_ip\_address\_morsh\_server](#output\_external\_ip\_address\_morsh\_server) | n/a |
| <a name="output_hostname_morsh_server"></a> [hostname\_morsh\_server](#output\_hostname\_morsh\_server) | n/a |
| <a name="output_internal_ip_address_morsh_server"></a> [internal\_ip\_address\_morsh\_server](#output\_internal\_ip\_address\_morsh\_server) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
