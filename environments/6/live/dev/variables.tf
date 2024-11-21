variable "ssh_public_key" {
  type = string
}

variable "aws_2023_ami" {
  type = string
}

variable "ec2_type" {
  type = string
}

variable "nginx_cluster_version" {
  type = string
  default = "1.0.0"
}
