/*
resource "aws_instance" "app_server" {
  # aws ec2 describe-images --image-ids ami-830c94e3 --region us-west-2
  # aws ec2 describe-images --image-ids ami-08d70e59c07c61a3a --region us-west-2
  ami           = var.ami["ubuntu_server_24.04"] # var.ami_image_id[var.environment]
  instance_type = "t2.micro"

  tags = {
    Name = "12123"
  }
}
*/

module "vpc" {
  source  = "./hospital-A/vpc"
}