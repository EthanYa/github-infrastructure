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
  has_issues = true
  has_projects = true
  topics = [
    "terraform",
    "infrastructure-as-code",
    "github"
  ]
}

resource "github_repository" "Yak-Yik" {
  name = "Yak-Yik"
  description = "Nodejs & React Practice"
  has_issues = true
  has_projects = true
}

resource "github_repository" "react-practice" {
  name = "react-practice"
  description = "some practice"
  has_issues = true
  has_projects = true
}

resource "github_repository" "nestjs-nats-streaming-transport" {
  name = "nestjs-nats-streaming-transport"
  description = "Nats Streaming Transport Module for NestJS"
  has_issues = true
  has_projects = true
}

resource "github_repository" "flutter_map" {
  name = "flutter_map"
  description = "A Flutter map widget inspired by Leaflet"
  has_issues = true
  has_projects = true
}

resource "github_repository" "LeaveSystem" {
  name = "LeaveSystem"
  description = "LeaveSystem for Java EE"
  has_issues = true
  has_projects = true
}
