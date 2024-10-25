variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 2
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI to use for the instances"
  default     = "ami-0c55b159cbfafe1f0"
}
