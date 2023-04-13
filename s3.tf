resource "aws_s3_bucket" "this_bucket" {
  bucket = "demo-bucket-ddd-pro-ragu007"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "demo/directory01/"
}