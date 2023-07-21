output "iam_role_arn" {
  description = "IAM role ARN to enable Overmind read-only access to account resources"
  value = aws_iam_role.this.arn
}
