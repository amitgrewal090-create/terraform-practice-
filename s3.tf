resource "aws_s3_bucket" "devops_practice" {
  bucket = "amit-devops-practice-2026-unique"

  tags = {
    Name        = "DevOps-Practice"
    Environment = "Learning"
  }
}