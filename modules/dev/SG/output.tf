output "dev_vpc_ssh_sg" {
    value = aws_security_group.terraform-demo-vpc-ssh.id
  
}

output "dev_vpc_web_sg" {
    value = aws_security_group.terraform-demo-vpc-web.id
  
}