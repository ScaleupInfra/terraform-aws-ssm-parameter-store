resource "aws_ssm_parameter" "my_parameter" {
  name            = var.ssm_parameter_names[0]
  type            = var.type
  value           = var.value
  description     = var.description
  tier            = var.tier
  overwrite       = var.overwrite
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type

  tags = local.tags
}

locals {
  tags = {
    "Created by"  = "Tushar"
    "Env"         = "dev"
    "Company"     = "autostacelupinfra"
    "Automation"  = "terraform"
  }
}
