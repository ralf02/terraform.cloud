resource "aws_s3_bucket" "bucket_web01" {
  bucket = "${local.sufix-s3}"
}
