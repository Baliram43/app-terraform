output "vpcid" {
  value = aws_vpc.awsvpc.id
}

output "subnetids" {
  value = aws_subnet.subnets[*].id
}