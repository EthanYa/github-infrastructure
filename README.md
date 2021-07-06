# github-infrastructure
[![Terraform](https://github.com/EthanYa/github-infrastructure/actions/workflows/terraform.yml/badge.svg?branch=master)](https://github.com/EthanYa/github-infrastructure/actions/workflows/terraform.yml)

Use terraform to manage my GitHub repositories.

## Prerequisites
- terraform >= 1.0.0
- aws-cli >= 2.0.0
- git >= 2.9.0

## Usage

- prepare env, make sure all env loaded
```
export AWS_PROFILE=YOUR_AWS_PROFILE
export TF_VAR_token=YOUR_GITHUB_TOKEN
export TF_VAR_aws_region=AWS_REGION
```

- init project
```
make init
terraform init -backend-config "region=$TF_VAR_aws_region"
```

- apply changes
```
terraform apply 
```

## Author

**Ethan Yeh**
- GitHub: [EthanYeh](https://github.com/EthanYa)

## TODO
- [x] integrate renovate
- [x] use s3 to manage state
- [x] add Git Hooks
- [X] add Makefile
- [X] integrate GitHub Actions
