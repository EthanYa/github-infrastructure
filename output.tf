output "current_github_login" {
  value = data.github_user.current.login
}

output "terraform_state_s3_bucket" {
  value = aws_s3_bucket.github-infrastructure-terraform-state.bucket
}

output "terraform_state_locks_dynamodb_table_name" {
  value = aws_dynamodb_table.github-infrastructure-terraform-state-locks.name
}