output "dev_vpc" {
    value = aws_vpc.terraform-demo-vpc.id
}

output "dev_public_subnet" {
    value = aws_subnet.terraform-demo-public-sub.id
}

output "dev_private_subnet" {
    value = aws_subnet.terraform-demo-private-sub.id
}

output "dev_igw" {
    value = aws_internet_gateway.terraform-demo-igw.id
}

output "dev_ec2" {
    value = aws_instance.terraform-demo-ec2.id
  
}

