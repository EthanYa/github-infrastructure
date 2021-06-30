terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.token
}

# Retrieve information about the currently authenticated user.
data "github_user" "current" {
  username = ""
}

resource "github_repository" "github-infrastructure" {
  name = "github-infrastructure"
  description = "GitHub repositories configuration files"
  homepage_url = "https://github.com/EthanYa?tab=repositories"
  topics = [
    "terraform",
    "infrastructure-as-code",
    "github"
  ]
}
