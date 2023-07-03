module "aws_ssm_parameter" {
  source = "./aws-ssm-parameter-modules"

  ssm_parameter_names = ["autoscaleup-Engineering-dev-ssm-module"]
  type                = "String"
  value               = "my_name_is_tushar"
  description         = "This is my parameter description."
  tier                = "Standard"
  key_id              = ""
  overwrite           = true
  allowed_pattern     = "^[a-zA-Z0-9_]+$"
  data_type           = "text"

  
}

locals {
  tags = {
    "Created by"  = "Tushar"
    "Env"         = "dev"
    "Company"     = "autoscaleupinfra"
    "Automation"  = "terraform"
  }
}
