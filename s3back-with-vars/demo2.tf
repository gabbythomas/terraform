variable "bucket_number" {
  default = 10
}

resource "aws_s3_bucket" "my_simpli_bucket_01" {
  count = var.bucket_number != 0 ? var.bucket_number : 11
  bucket = "${var.bucket_name}-${var.bucket_number}"
}

variable "users" {
  type = list
  default = ["batman", "superman", "ironman"]
}

resource "aws_s3_bucket" "my_simpli_bucket_03" {
  count = length(var.users)
  bucket = "${var.bucket_name}-${var.users[count.index]}"
  acl = "private"
  force_destroy = "true"
}






