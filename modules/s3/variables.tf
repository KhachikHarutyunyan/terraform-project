variable "environment" {
  type = string
}

variable "project" {
  type = string
}

variable "account_id" {
  type = string
}

variable "versioning_enabled" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "force_destroy" {
  type = bool
  default = false
}