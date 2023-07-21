resource "aws_iam_role" "this" {
  name               = "overmind"
  path               = "/"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "overmind"
        Principal = {
          AWS = "arn:aws:iam::942836531449:root"
        }
      }
    ]
  })
}
