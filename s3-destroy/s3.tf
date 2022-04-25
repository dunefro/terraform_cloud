resource "aws_s3_bucket" "b" {
  bucket = "blotout-delete-test-bucket"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}