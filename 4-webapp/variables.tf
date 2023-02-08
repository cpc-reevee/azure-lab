variable "vm_size" {
  type        = string
  description = "Specifies the size of the virtual machine."
  default     = "Standard_B2s"
}

variable "admin_username" {
  type        = string
  description = "Administrator user name for OS."
  default     = "hashicorp"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "Administrator password for OS."
  default     = "Password123!"
}

variable "hashi_products" {
  type = list(object({
    name       = string
    color      = string
    image_file = string
  }))
  default = [
    {
      name       = "Consul"
      color      = "#dc477d"
      image_file = "hashicafe_art_consul.png"
    },
    {
      name       = "HCP"
      color      = "#ffffff"
      image_file = "hashicafe_art_hcp.png"
    },
    {
      name       = "Nomad"
      color      = "#60dea9"
      image_file = "hashicafe_art_nomad.png"
    },
    {
      name       = "Packer"
      color      = "#63d0ff"
      image_file = "hashicafe_art_packer.png"
    },
    {
      name       = "Terraform"
      color      = "#844fba"
      image_file = "hashicafe_art_terraform.png"
    },
    {
      name       = "Vagrant"
      color      = "#2e71e5"
      image_file = "hashicafe_art_vagrant.png"
    },
    {
      name       = "Vault"
      color      = "#ffec6e"
      image_file = "hashicafe_art_vault.png"
    }
  ]
}

variable "store_name" {
  type        = string
  description = "Name of the store."
  default     = "HashiCafe"
}

variable "youtube_video_id" {
  type        = string
  description = "YouTube video ID."
  default     = "dWNv_XDR0zg"
  # This may or not be the video ID to Rick Roll the demo audience "dQw4w9WgXcQ"
}