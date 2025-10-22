# ----------------------------
# S3 Backup Bucket Module
# ----------------------------

resource "aws_s3_bucket" "backup" {
  bucket = "wiz-backup-${random_id.bucket_suffix.hex}"
  acl    = "public-read"

  tags = {
    Name = "wiz-s3-backup"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# Enable public access block intentionally disabled for exercise
resource "aws_s3_bucket_public_access_block" "example" {
  bucket                  = aws_s3_bucket.backup.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
