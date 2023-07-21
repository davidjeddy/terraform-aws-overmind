resource "aws_iam_policy" "this" {
  name        = "overmind"
  path        = "/"
  description = "Allow Overmind read-only access to resource status"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "autoscaling:Describe*",
          "cloudwatch:Describe*",
          "dynamodb:Describe*",
          "dynamodb:List*",
          "ec2:Describe*",
          "ecs:Describe*",
          "ecs:List*",
          "eks:Describe*",
          "eks:List*",
          "elasticloadbalancing:Describe*",
          "iam:Get*",
          "iam:List*",
          "lambda:Get*",
          "lambda:List*",
          "rds:Describe*",
          "route53:Get*",
          "route53:List*",
          "s3:GetBucket*",
          "s3:ListAllMyBuckets"
        ],
        "Resource": "*"
      }
    ]
  })
}
