output "public_ip" {
  description = "Public IP address of the MongoDB EC2 instance"
  value       = aws_instance.mongo.public_ip
}
