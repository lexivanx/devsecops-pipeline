variable "region" {
  description = "The AWS region to deploy the infrastructure in."
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  default     = "10.0.1.0/24"
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the instance."
  default     = "ami-0c55b159cbfafe1f0" # Example: Amazon Linux 2 LTS
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance."
  default     = "t2.micro"
}
