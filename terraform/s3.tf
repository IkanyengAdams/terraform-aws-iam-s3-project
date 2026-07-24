resource "aws_s3_bucket" "project_bucket" {
  bucket = "${var.project_name}-${random_string.bucket_suffix.result}"

  tags = {
    Name        = var.project_name
    Environment = "Learning"
  }
}

resource "aws_s3_object" "sample_file" {
  bucket = aws_s3_bucket.project_bucket.id
  key    = "hello.txt"
  source = "${path.module}/sample.txt"

  etag = filemd5("${path.module}/sample.txt")
}