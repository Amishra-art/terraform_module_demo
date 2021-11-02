
variable "demo_vpc" {
  description = "CIDR block of vpc"

}

variable "demo_pub_sub" {
  description = "CIDR block of public subnet"
}

variable "demo_pub_az" {
  description = "Availability zone of public subnet"
  type        = string
}

variable "demo_priv_sub" {
  description = "CIDR block of private subnet"
}

variable "demo_priv_az" {
  description = "Availability zone of private subnet"
  type        = string
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

variable "terraform-demo-bucket-name" {
  description = "Name of s3 bucket"
  
}