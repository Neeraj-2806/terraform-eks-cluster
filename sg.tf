resource "aws_security_group" "all_worker_mgmt" {
  name   = "all_worker_management"
  vpc_id = module.vpc.vpc_id

  ingress {
    description = "allow inbound traffic from private networks"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
  }

  egress {
    description = "allow outbound traffic to anywhere"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "all_worker_mgmt"
    Environment = "Production"
  }
}
