# AWS Region
region            = "eu-west-2"
frontend_name     = "frontend"
backend_name      = "backend"

################################################### VPC #######################################################
# VPC Name
vpc_name                        = "vpc-asraf"
# VPC CIDR Block
cidr                            = "10.0.0.0/16"
# VPC Availability Zones
azs                             = ["eu-west-2a", "eu-west-2b"]
# VPC Public Subnets
public_subnets                  = ["10.0.101.0/24", "10.0.102.0/24"]
# VPC Private Subnets
private_subnets                 = ["10.0.1.0/24", "10.0.2.0/24"]
# VPC Database Subnets
database_subnets                = ["10.0.151.0/24", "10.0.152.0/24"]
# VPC Create Database Subnet Group (True / False)
create_database_subnet_group    = true
# VPC Create Database Subnet Route Table (True or False)
create_database_subnet_route_table = true
# VPC Enable NAT Gateway (True or False) 
enable_nat_gateway              = true
# VPC Single NAT Gateway (True or False)
single_nat_gateway              = true

############################################# security group #######################################################
# Port number of the frontend app
port_frontend       = 3000
# Port number of the backend app
port_backend        = 5000
# Port number of the database app
port_database       = 3306
# Port number for HTTP
port_http           = 80
# HTTP protocol for security group and health checks
protocol_http       = "HTTP"
# TCP protocol name for security group and health checks
protocol_tcp        = "tcp"
# Security Group CIDR block
sg_cidr             = ["0.0.0.0/0"]

############################################# RDS ####################################################
# RDS Password 
db_pass             = ""
# Database name
db_name             = "backend"
# Database user name
db_user             = "root"
# Database instance type
db_instance_type    = "db.t3.micro"
# Type of the database engine (e.g., mysql, postgress)
db_engine           = "mysql"
# Version of the database engine
db_engine_version   = "5.7"

################### Auto scaling group ######################################
# Frontend Auto Scaling Group
frontend_asg_name                   = "frontend-asg"
frontend_ami                        = "ami-0e6c17d28dc6c4208"
frontend_instance_type               = "t3.micro"
frontend_asg_min_szie                = 2
frontend_asg_max_size                = 4
frontend_asg_desired_capacity        = 2
frontend_asg_wait_for_capacity_timeout = 0

# Backend Auto Scaling Group
backend_asg                         = "backend-asg"
backend_ami                         = "ami-04e1ec573bbbafba8"
backend_instance_type                = "t3.micro"
backend_asg_min_szie                 = 2
backend_asg_max_size                 = 4
backend_asg_desired_capacity         = 2
backend_asg_wait_for_capacity_timeout = 0

##################################### Load Balancer ############################################
# Type of Load Balancer (e.g., application, network)
load_balancer_type                  = "application"
# Internal Load Balancer (True or False)
load_balancer_internal              = false
# Type for target group (e.g., instance)
target_type                         = "instance"
# Type of AWS LB listener (e.g., forward)
aws_lb_listener_type                = "forward"
# Type of IP address (ipv4 or ipv6)
ip_address_type                     = "ipv4"

############################################### Tags #####################################
tags = {
  "Created By" = "orasraf@terasky.com"
  "Purpose"    = "learning"
  "terraform"  = "true"
  "Env"        = "stage"
}
