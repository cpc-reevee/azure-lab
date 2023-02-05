output "hashiapp_url" {
  description = "URL of the provisioned webapp."
  value       = "http://${azurerm_public_ip.hashicafe.fqdn}"
}

output "product" {
  description = "The product which was randomly selected."
  value       = var.hashi_products[random_integer.product.result].name
}
