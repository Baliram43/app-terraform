output "myvpcid" {
  value = aws_vpc.awsvpc.id

}

output "mypubsubids" {
  value = aws_subnet.pubsub[*].id

}

output "mypvtsubids" {
  value = aws_subnet.pvtsub[*].id
}

output "pubroutetableid" {
  value = aws_route_table.pubroutetable.id

}

output "pvtroutetableid" {
  value = aws_route_table.pvtroutetable.id

}

output "igwid" {
  value = aws_internet_gateway.igw.id
}

output "natid" {
  value = aws_nat_gateway.natgw.id

}