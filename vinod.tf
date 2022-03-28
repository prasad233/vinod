provider aws {
region = "us-east-1"
access_key = "AKIA27BLU3ZNA6DIFO4R"
secret_key = "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"
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name= "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
