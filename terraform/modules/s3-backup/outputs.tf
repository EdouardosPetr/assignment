output "bucket_name" {
  description = "S3 bucket name for backups"
  value       = aws_s3_bucket.backup.bucket
}
