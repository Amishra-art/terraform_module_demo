variable "terraform-demo-bucket-name" {
  description = "Name of s3 bucket"
  type = string
}

variable "terraform-demo-s3-bucket-tags" {
  description = "Tags of s3 bucket"
  type = map(string)
}