# providers informs terraform of the type service being used
# and makes appropriate API calls based on the selected provider
# see: https://www.terraform.io/docs/providers/index.html
provider "aws" {
  region     = "eu-central-1"
  access_key = var.access_key
  secret_key = var.secret_key
  version    = "~> 2.54"
}

# collect detalis on all available AZs in region defined in provider
data "aws_availability_zones" "selected" {
  state = "available"
}
