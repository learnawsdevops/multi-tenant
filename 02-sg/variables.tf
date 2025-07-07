variable "common_tags" {
  default = {
    Project     = "multi-tenant"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "sg_tags" {
  default = {}
}

variable "project_name" {
  default = "multi-tenant"
}
variable "environment" {
  default = "dev"
}

