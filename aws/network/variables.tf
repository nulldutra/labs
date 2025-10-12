variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "The cidr of the VPC"
}

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "The list of the additional CIDR of the VPC"
  default     = []
}

variable "public_subnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "database_subnets" {
  default = []

  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}
