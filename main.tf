terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    //pass region via terraform init -backend-config "region=$TF_VAR_aws_region"
    bucket         = "github-infrastructure-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "github-infrastructure-terraform-state-locks"
    encrypt        = true
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "github-infrastructure-terraform-state" {
  bucket = "github-infrastructure-terraform-state"
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "github-infrastructure-terraform-state-locks" {
  name         = "github-infrastructure-terraform-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

provider "github" {
  token = var.token
}

# Retrieve information about the currently authenticated user.
data "github_user" "current" {
  username = ""
}

resource "github_user_ssh_key" "github_user_ssh_keys" {
  for_each = var.github_user_ssh_keys

  title = each.key
  key   = each.value
}

resource "github_user_gpg_key" "github_user_gpg_key" {
  armored_public_key = var.github_user_gpg_key
}

resource "github_user_gpg_key" "token_bricks_github_user_gpg_key" {
  armored_public_key = var.token_bricks_github_user_gpg_key
}
resource "github_repository" "dotfiles-chezmoi" {
  name             = "dotfiles"
  description      = "My macOS dotfiles"
  has_issues       = true
  has_projects     = true
  auto_init        = true
  license_template = "mit"
  topics = [
    "dotfiles",
    "chezmoi"
  ]
}

resource "github_repository" "dotfiles" {
  name             = "dotfiles-deprecated"
  description      = "My macOS dotfiles"
  has_issues       = true
  has_projects     = true
  auto_init        = true
  license_template = "mit"
  visibility       = "private"
  topics = [
    "dotfiles",
    "dotbot"
  ]
}

resource "github_repository" "github-infrastructure" {
  name             = "github-infrastructure"
  description      = "My GitHub repositories configuration"
  homepage_url     = "https://github.com/EthanYa?tab=repositories"
  has_issues       = true
  has_projects     = true
  auto_init        = true
  license_template = "mit"
  topics = [
    "terraform",
    "infrastructure-as-code",
    "github"
  ]
}

resource "github_repository" "nestjs-nats-streaming-transport" {
  name         = "nestjs-nats-streaming-transport"
  description  = "Nats Streaming Transport Module for NestJS"
  has_issues   = true
  has_projects = true
}

resource "github_repository" "flutter_map" {
  name         = "flutter_map"
  description  = "A Flutter map widget inspired by Leaflet"
  has_issues   = true
  has_projects = true
}

resource "github_repository" "Yak-Yik" {
  name         = "Yak-Yik"
  description  = "Nodejs & React Practice"
  has_issues   = true
  has_projects = true
  visibility   = "private"
}

resource "github_repository" "react-practice" {
  name         = "react-practice"
  description  = "some practice"
  has_issues   = true
  has_projects = true
  visibility   = "private"
}

resource "github_repository" "LeaveSystem" {
  name         = "LeaveSystem"
  description  = "LeaveSystem for Java EE"
  has_issues   = true
  has_projects = true
  visibility   = "private"
}
