resource "aws_vpc" "terraform-demo-vpc" {
    cidr_block = var.demo_vpc
    tags = var.terraform-vpc-tags
}

resource "aws_subnet" "terraform-demo-public-sub" {
    vpc_id = aws_vpc.terraform-demo-vpc.id
    cidr_block = var.demo_pub_sub
    availability_zone = var.demo_pub_az
    tags = var.terraform-pub-sub-tags
  
}

resource "aws_subnet" "terraform-demo-private-sub" {
    vpc_id = aws_vpc.terraform-demo-vpc.id
    cidr_block = var.demo_priv_sub
    availability_zone = var.demo_priv_az
    tags = var.terraform-priv-sub-tags
}

resource "aws_internet_gateway" "terraform-demo-igw" {
    vpc_id = aws_vpc.terraform-demo-vpc.id
    tags = var.terraform-igw-tags
}

resource "aws_instance" "terraform-demo-ec2" {
    ami = var.terraform-demo-ec2
    subnet_id = aws_subnet.terraform-demo-public-sub.id
    availability_zone = var.terraform-demo-ec2-az
    key_name = var.terraform-demo-key
    instance_type = var.terraform-demo-instance-type
    tags = var.terraform-ec2-tags
    #security_groups = var.terraform-demo-sg
}



