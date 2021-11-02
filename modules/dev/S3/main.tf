resource "aws_s3_bucket" "terraform-demo-s3-bucket" {
    bucket = var.terraform-demo-bucket-name
    acl = "public-read"

    versioning {
      enabled = true
    }
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
        "Sid": "PublicReadGetObject",
        "Effect": "Allow",
        "Principal": {
            "AWS": "*"
        },
        "Action": "s3:GetObject",
        "Resource": "arn:aws:s3:::terraform-demo-bucket-name/*"
        }
    ]
}
EOF

    website {
      index_document = "index.html"
      error_document = "error.html"
    }
    tags = var.terraform-demo-s3-bucket-tags
    force_destroy = true

    
  
}
resource "aws_s3_bucket_object" "terraform-demo-file-upload" {
    bucket = aws_s3_bucket.terraform-demo-s3-bucket.id

    key = "index.html"

    source = "C:\\Users\\Anand Mishra\\Desktop\\index.html"

    etag = filemd5("C:\\Users\\Anand Mishra\\Desktop\\index.html")
  
}

