provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "my-unsecure-bucket"
  acl    = "public-read"
}

resource "aws_iam_policy" "open_policy" {
  name        = "AllowAllPolicy"
  description = "This policy allows all actions"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "*"
        Effect = "Allow"
        Resource = "*"
      }
    ]
  })
}
