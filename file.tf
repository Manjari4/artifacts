provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_container_group" "container" {
  name                = var.container_group_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  os_type             = "Linux"
  dns_name_label      = "manjari-dns"
  restart_policy      = var.restart_policy

  container {
    name   = var.container_name
    image  = var.image
    cpu    = var.cpu_cores
    memory = var.memory_in_gb
    ports {
      port     = var.port
      protocol = "TCP"
    }
  }
}