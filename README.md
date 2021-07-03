# github-infrastructure

Use terraform to manage my GitHub repositories.

## Prerequisites

- terraform >= 1.0.0

## Usage
```
export AWS_PROFILE=YOUR_AWS_PROFILE
export GITHUB_TOKEN=YOUR_GITHUB_TOKEN

terraform init
terraform apply -var token=$GITHUB_TOKEN 

```

## Author

## TODO
- [ ] write README and add badge
- [x] integrate renovate
- [x] use s3 to manage state
- [ ] add Git Hooks   
- [ ] integrate GitHub Actions
