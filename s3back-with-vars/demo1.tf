resource "aws_s3_bucket" "gabby-bucket-demo1" {
  bucket = "${var.bucket_name}-main"
  acl = "private"
}
