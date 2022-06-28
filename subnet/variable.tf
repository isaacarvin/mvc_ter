variable "res_subnets_info" {
  type        = list
  description = "Subnet: Subnet name and Address prefix list"
}

variable "res_vnet_rg_name" {
  type        = string
  description = "Subnet: vNet Resource Group Name"
}
variable "res_vnet_name" {
  type        = string
  description = "Subnet: vNet Name"
}