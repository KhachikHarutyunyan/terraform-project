variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "bucket_arn" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
