# Security Group for ssh traffic
resource "aws_security_group" "terraform-demo-vpc-ssh" {
    
    
    name               = "vpc-ssh"  
    description        = "VPC ssh Security Group"
    ingress {
        description = "Allow Port 22"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks  = ["0.0.0.0/0"]
    }
    egress {
        description = "Allow all ip and ports outbound"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks  = ["0.0.0.0/0"]
    }
}

# Security Group for web traffic
resource "aws_security_group" "terraform-demo-vpc-web" {
    
    name               = "vpc-web"
    description        = "VPC web Security Group"
    ingress {
        description = "Allow Port 80"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks  = ["0.0.0.0/0"]
    }
    ingress {
        description = "Allow Port 443"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks  = ["0.0.0.0/0"]
    }
    egress {
        description = "Allow all ip and ports outbound"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks  = ["0.0.0.0/0"]
    }
}