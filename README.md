# github-infrastructure
[![Terraform](https://github.com/EthanYa/github-infrastructure/actions/workflows/terraform.yml/badge.svg?branch=master)](https://github.com/EthanYa/github-infrastructure/actions/workflows/terraform.yml)

Use terraform to manage my GitHub repositories.

## Prerequisites
- terraform >= 1.0.0
- aws-cli >= 2.0.0
- git >= 2.9.0

## Usage

- prepare env, make sure all env loaded
```shell
export AWS_PROFILE=YOUR_AWS_PROFILE
export TF_VAR_token=YOUR_GITHUB_TOKEN
export TF_VAR_aws_region=AWS_REGION
```
- my env
```shell
export AWS_PROFILE=ethan.yeh
export TF_VAR_token=$(bw get item 9dcefa5f-d970-4993-bf4e-aed200a36949 | jq -r '.fields[0].value')
export TF_VAR_aws_region=ap-northeast-1
```

- init project
```shell
make init
terraform init -backend-config "region=$TF_VAR_aws_region"
```

- apply changes
```shell
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
