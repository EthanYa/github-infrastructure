variable "token" {
  description = "GitHub access token used to configure the provider"
  type        = string
}

variable "aws_region" {
  type = string
  default = "ap-northeast-1"
}

variable "aws_profile" {
  description = "aws cli profile"
  type        = string
}
