variable "prefix" {
  type        = string
  description = "This prefix will be included in the name of most resources. (e.g. ericreeves, can contain lowercase letters and hypens)"
}

variable "env" {
  type        = string
  description = "Value for the environment tag. (e.g. immersionday, can contain lowercase letters and hypens)"
}

variable "department" {
  description = "Value for the department tag."
  type        = string
  default     = "PlatformEng"
}

variable "owner" {
  description = "Value for the owner tag."
  type        = string
  default     = "web.developer"
}

variable "address_space" {
  type        = string
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  type        = string
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "store_name" {
  type        = string
  description = "Name of the store."
  default     = "HashiCafe"
}
