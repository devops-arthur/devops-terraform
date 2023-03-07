# vpc/main.tf

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name        = "my-vpc-${var.environment}"
    Environment = var.environment
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)

  cidr_block = var.private_subnets[count.index]
  vpc_id     = aws_vpc.main.id

  tags = {
    Name        = "private-${count.index + 1}"
    Environment = var.environment
  }
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  cidr_block = var.public_subnets[count.index]
  vpc_id     = aws_vpc.main.id

  tags = {
    Name        = "public-${count.index + 1}"
    Environment = var.environment
  }
}
