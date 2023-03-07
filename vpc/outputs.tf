# vpc/output.tf
#exports the outputs of the aws_vpc and aws_subnet resources defined in the main.tf file.
output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets" {
  value = aws_subnet.public.*.id
}

output "private_subnets" {
  value = aws_subnet.private.*.id
}
