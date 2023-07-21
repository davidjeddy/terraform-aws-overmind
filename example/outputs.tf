output "overmind_iam_role_arn" {
  description = "IAM role ARN to enable Overmind read-only access to account resources"
  value = module.overmind.iam_role_arn
}
