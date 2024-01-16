variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "common_tags" {
  default = {}
  type    = map(any)
}

variable "sg_tags" {
  default = {}
  type    = map(any)
}

variable "vpc_id" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "sg_ingress_rules" {
  type    = list(any)
  default = []
}
