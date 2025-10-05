########## BEGIN of variables Common / Global for all modules ################

variable "m_app_name" {
  type        = string
  description = "Application Name"
}

variable "m_environment_tag" {
  type        = string
  description = <<-EOF
    The environment tag used while labeling provisioned resources. Allowed values:
    - `d` for development
    - `t` for test
    - `q` for qualification
    - `p` for production
    - `m` for mutualized resource
  EOF
  default     = "d"

  validation {
    condition     = contains(["d", "t", "q", "p", "m"], lower(var.m_environment_tag))
    error_message = "Unsupported environment tag specified. Supported values: 'd','t','q','p','m'."
  }
}

variable "m_instance_number" {
  type        = string
  description = <<-EOF
    A unique instance identifier for resources, useful when multiple instances of the same type are created.
    - Example 1: Numbering disks or sub-resources to identify them at runtime.
    - Example 2: Numbering subnets to distinguish primary and secondary.
    Defaults to `null` if not specified.
  EOF
  default     = null
}

variable "m_location" {
  type        = string
  description = "Azure region where resources should be deployed (e.g., West Europe)."
  default     = "West Europe"
}

variable "m_tags" {
  type        = map(string)
  description = "Common tags to apply to resources."
  default     = {}
}
