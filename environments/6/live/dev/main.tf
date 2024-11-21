module "nginx_cluster" {
  source         = "git@github.com:phoboxx/nginx_cluster.git?ref=1.0.1"
  ssh_public_key = var.ssh_public_key
  aws_2023_ami   = var.aws_2023_ami
  ec2_type       = var.ec2_type
}