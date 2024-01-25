resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl

  versioning {
    enabled = var.versioning
  }

  tags = merge(
    var.tags,
    {
      "Name" = var.bucket_name
    }
  )

  lifecycle_rule {
    id      = "expire-old-objects"
    enabled = true

    expiration {
      days = var.expiration_days
    }
  }
}
