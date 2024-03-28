variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)."
  type        = string
}

variable "image_id" {
  description = "The AMI ID for the EC2 instances."
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instances."
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group for the EC2 instances and ALB. This security group should allow appropriate inbound and outbound traffic for your application."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EC2 instances and ALB. These subnets should be part of the VPC where your application is deployed and allow public internet access if the application is internet-facing."
  type        = list(string)
}

variable "user_data" {
  description = "The user data script to bootstrap the EC2 instances. This is often used to install software, download application code, or perform other initialization tasks."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the VPC where the EC2 instances, ASG, and ALB will be deployed. This VPC should be the one created by your VPC module or any other existing VPC you wish to use."
  type        = string
}

variable "asg_min_size" {
  description = "The minimum size of the Auto Scaling Group. This determines the minimum number of instances that should always be running for your application."
  type        = number
  default     = 1
}

variable "asg_max_size" {
  description = "The maximum size of the Auto Scaling Group. This limits the number of instances that can be launched in response to increased load."
  type        = number
  default     = 3
}

variable "asg_desired_capacity" {
  description = "The desired number of instances in the Auto Scaling Group. The ASG attempts to maintain this number of instances at all times."
  type        = number
  default     = 2
}
