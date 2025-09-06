variable "vpc_cidr" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

resource "aws_subnet" "tf_cloud" {
  cidr_block = var.subnet_cidr
  vpc_id = aws_vpc.tf_cloud.id

  tags = {
    Name = "terraform-cloud"
  }
}