variable "sg_name" {
  type = string
}

variable "description" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "common_tags" {
  type = map(any)
}

variable "sg_tags" {
  type = map(any)
}

variable "ingress" {
  type = list(any)
  default = [  ]
}