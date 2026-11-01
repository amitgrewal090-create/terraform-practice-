resource "aws_s3_bucket" "devops_practice" {
  bucket = "amit-devops-practice-2026-unique"

  tags = {
    Name        = "DevOps-Practice"
    Environment = "Learning"
  }
}

# S3 Bucket Versioning
resource "aws_s3_bucket_versioning" "devops_versioning" {
  bucket = aws_s3_bucket.devops_practice.id

  versioning_configuration {
    status = "Enabled"
  }
}

# S3 Server-Side Encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "devops_encryption" {
  bucket = aws_s3_bucket.devops_practice.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# S3 Public Access Block
resource "aws_s3_bucket_public_access_block" "devops_public_access" {
  bucket = aws_s3_bucket.devops_practice.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}