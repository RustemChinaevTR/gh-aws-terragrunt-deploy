resource "aws_s3_object" "stack-1" {
  bucket = var.bucket_arn
  key    = "stack-1"
}
