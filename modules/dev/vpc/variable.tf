
variable "demo_vpc" {
    description = "CIDR bloc of vpc"
  
}

variable "demo_pub_sub" {
    description = "CIDR block of public subnet"
}

variable "demo_pub_az" {
    description = "Availability zone of public subnet"
    type = string
}

variable "demo_priv_sub" {
    description = "CIDR block of private subnet"
}

variable "demo_priv_az" {
    description = "Availability zone of private subnet"
    type = string
  
}

variable "terraform-vpc-tags" {
}

variable "terraform-pub-sub-tags" {  
}

variable "terraform-priv-sub-tags" {
  
}

variable "terraform-igw-tags" {
  
}

variable "terraform-demo-ec2" {
    description = "AMI id for instance"
    
  
}
variable "terraform-demo-ec2-az" {
    description = "Availbility zone of public subnet"
}

variable "terraform-demo-key" {
    description = "EC2 SSH key"
  
}

variable "terraform-demo-instance-type" {
  
}
variable "terraform-ec2-tags" {
  
}