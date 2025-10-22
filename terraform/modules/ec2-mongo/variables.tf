variable "vpc_id" {
  description = "The VPC ID to launch the instance in"
  type        = string
}

variable "subnet_id" {
  description = "The public subnet ID for the MongoDB instance"
  type        = string
}
