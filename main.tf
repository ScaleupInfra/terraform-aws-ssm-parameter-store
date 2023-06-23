module "aws_ssm_parameter" {
  source = "./aws-ssm-parameter-modules"

  name = "infrasitydemo"
  type = "String"
  value = "my_parameter_value"
  description = "This is my parameter description."
  tier = "Standard"
  key_id = ""
  overwrite = true
  allowed_pattern = "^[a-zA-Z0-9_]+$"
  data_type = "text"


}

