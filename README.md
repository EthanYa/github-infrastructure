# github-infrastructure

Use terraform to manage my GitHub repositories.

## Prerequisites

- terraform >= 1.0.0

## Usage
```
export AWS_PROFILE=YOUR_AWS_PROFILE
export TF_VAR_token=YOUR_GITHUB_TOKEN
export TF_VAR_aws_region=AWS_RIGION

terraform init -backend-config "region=$TF_VAR_aws_region"
terraform apply 

```

## Author

## TODO
- [ ] write README and add badge
- [x] integrate renovate
- [x] use s3 to manage state
- [ ] add Git Hooks   
- [ ] integrate GitHub Actions
