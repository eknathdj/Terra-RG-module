module "rg" {
  source            = "git::https://github.com/module-rg.git?ref=v1.0.10"
  m_app_name        = var.m_app_name
  m_environment_tag = var.m_environment_tag
  m_location        = var.g_location
  m_tags            = merge(module.common_tags.common_tags, var.m_tags)
}
