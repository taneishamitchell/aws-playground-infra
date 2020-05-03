variable "access_key" {}

variable "secret_key" {}

variable "vpc_cidr" {
  description = "CIDR for AWS Playground/Sandbox"
  default     = "10.40.13.0/24"
}

variable "private_subnet" {
  type = list
  default = [
    "10.40.13.0/28",
    "10.40.13.16/28",
    "10.40.13.32/28"
  ]
}

variable "public_subnet" {
  type = list
  default = [
    "10.40.13.48/28",
    "10.40.13.64/28",
    "10.40.13.80/28"
  ]
}
