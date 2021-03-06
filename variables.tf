variable "token" {
  description = "GitHub access token used to configure the provider"
  type        = string
}

variable "aws_region" {
  type = string
}

variable "github_user_ssh_keys" {
  type = map(string)
}

variable "personal_github_user_gpg_keys" {
  type = map(string)
}

variable "token_bricks_github_user_gpg_keys" {
  type = map(string)
}