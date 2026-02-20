output "vpc_infra_ids" {
  value = {
    myvpcid         = aws_vpc.awsvpc.id
    mypubsubids     = aws_subnet.pubsub[*].id
    mypvtsubids     = aws_subnet.pvtsub[*].id
    pubroutetableid = aws_route_table.pubroutetable.id
    pvtroutetableid = aws_route_table.pvtroutetable.id
    igwid           = aws_internet_gateway.igw.id
    natid           = aws_nat_gateway.natgw.id
  }
}

