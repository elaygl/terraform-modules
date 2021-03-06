
#
# Fyde Access Proxy
#

variable "fyde_access_proxy_public_port" {
  description = "Public port for this proxy (must match the value configured in the console for this proxy)"
  type        = number
  default     = 443
}

variable "fyde_access_proxy_token" {
  description = "Fyde Access Proxy Token for this proxy (obtained from the console after proxy creation)"
}

variable "module_version" {
  description = "Terraform module version"
  type        = string
  default     = "v1.0.0"
}

#
# AWS
#

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

#
# Network Load Balancing
#

variable "nlb_enable_cross_zone_load_balancing" {
  description = "Configure cross zone load balancing for the NLB"
  type        = bool
  default     = false
}

variable "nlb_subnets" {
  description = "A list of public subnet IDs to attach to the LB. Use Public Subnets only"
  type        = list(string)
}

#
# Auto Scaling Group
#
variable "asg_desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the auto scaling group"
  type        = number
  default     = 3
}

variable "asg_min_size" {
  description = "The maximum size of the auto scaling group"
  type        = number
  default     = 3
}

variable "asg_max_size" {
  description = "The minimum size of the auto scaling group"
  type        = number
  default     = 3
}

variable "asg_subnets" {
  description = "A list of subnet IDs to launch resources in. Use Private Subnets with NAT Gateway configured or Public Subnets"
  type        = list
}

variable "asg_notification_arn_topic" {
  description = "Optional ARN topic to get Auto Scaling Group events"
  type        = string
  default     = ""
}

#
# Launch Configuration
#

variable "launch_cfg_associate_public_ip_address" {
  description = "Associate a public ip address with an instance in a VPC"
  type        = bool
  default     = false
}

variable "launch_cfg_instance_type" {
  description = "The type of instance to use (t2.micro, t2.small, t2.medium, etc)"
  type        = string
  default     = "t2.small"
}

variable "launch_cfg_key_pair_name" {
  type        = string
  description = "The name of the key pair to use"
}
