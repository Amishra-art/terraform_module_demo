module "vpc_module" {
  source             = "./dev/vpc"
  demo_vpc           = var.demo_vpc
  terraform-vpc-tags = local.common_tags

  demo_pub_sub           = var.demo_pub_sub
  demo_pub_az            = var.demo_pub_az
  terraform-pub-sub-tags = local.common_tags

  demo_priv_sub           = var.demo_priv_sub
  demo_priv_az            = var.demo_priv_az
  terraform-priv-sub-tags = local.common_tags

  terraform-igw-tags = local.common_tags

  terraform-demo-ec2           = var.terraform-demo-ec2
  terraform-demo-ec2-az        = var.terraform-demo-ec2-az
  terraform-demo-key           = var.terraform-demo-key
  terraform-demo-instance-type = var.terraform-demo-instance-type
  terraform-ec2-tags           = local.common_tags
  
}

module "terraform-demo-static-web-s3-bucket" {
  source = "./dev/s3"
  terraform-demo-bucket-name = var.terraform-demo-bucket-name
  terraform-demo-s3-bucket-tags = local.common_tags
  
}

module "terraform-demo-sg" {
  source = "./dev/sg"
  #terraform-demo-security-group = ["$(demo.terraform-demo-security-group.terraform-demo-vpc-ssh)"]
  
  
}
