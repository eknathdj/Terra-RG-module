locals {
  instance_id = (var.m_instance_number == null || var.m_instance_number == "") ? "" : var.m_instance_number
  rg_name     = format("azr%s%s%s%s", var.m_environment_tag, "rg", var.m_app_name, local.instance_id)
}

# Resource Group
resource "azurerm_resource_group" "az_rg" {
  # ts:skip=AC_AZURE_0389 need to skip rule Ensure that Azure Resource Group has resource lock enabled
  name     = local.rg_name
  location = var.m_location
  tags     = var.m_tags
}
