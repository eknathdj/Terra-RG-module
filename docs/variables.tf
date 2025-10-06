#╔═════════════════════╗
#   PROJECT VARIABLES
#╚═════════════════════╝

variable "g_location" {
  type        = string
  description = "Location where the project's resources should be deployed"
  default     = "West Europe"
}

variable "m_tags" {
  type        = map(any)
  description = "Common Tags of the project"
  default = {
    DummyTag = "DummyValue"
  }
}

variable "m_environment_tag" {
  type        = string
  description = <<-EOF
The environment tag to be used while naming the provisioned resources. The list of possible values are as follows:
- `d` for development
- `t` for test
- `q` for qualification
- `i` for integration
- `s` for staging or pre-production
- `p` for production
- `y` for playground
- `m` for mutualized resource
EOF
  default     = "d"
  validation {
    condition     = contains(["d", "t", "q", "i", "s", "p", "y", "m"], lower(var.m_environment_tag))
    error_message = "Unsupported environment tag specified. Supported environments are: 'd', 't', 'q', 'i', 's', 'p', 'y' and 'm'."
  }
}
