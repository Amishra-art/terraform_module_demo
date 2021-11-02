output "terraform-demo-s3-bucket-arn" {
    description = "ARN of the s3 bucket"
    value = aws_s3_bucket.terraform-demo-s3-bucket.arn
  
}

output "terraform-demo-s3-bucket-name" {
    description = "Name (id) of the s3 bucket"
    value = aws_s3_bucket.terraform-demo-s3-bucket.id
  
}

output "terraform-demo-s3-bucket-domain" {
    description = "Domain name of s3 bucket"
    value = aws_s3_bucket.terraform-demo-s3-bucket.website_domain
  
}
output "terraform-demo-s3-bucket-endpoint" {
    description = "Endpoint Information of the bucket"
    value = aws_s3_bucket.terraform-demo-s3-bucket.website_endpoint
  
}