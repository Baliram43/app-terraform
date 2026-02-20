resource "aws_vpc" "awsvpc" {
  cidr_block = var.net_info.vpccidr
  tags = {
    Name = var.net_info.vpcname
  }
}
resource "aws_subnet" "pubsub" {
  count             = local.pubsub_count
  vpc_id            = aws_vpc.awsvpc.id
  availability_zone = var.net_info.pubsubnets_info[0].pubsubaz[count.index]
  cidr_block        = var.net_info.pubsubnets_info[0].pubsubcidr[count.index]
  tags = {
    Name = var.net_info.pubsubnets_info[0].pubsubname[count.index]
  }
}

resource "aws_subnet" "pvtsub" {
  count             = local.pvtsub_count
  vpc_id            = aws_vpc.awsvpc.id
  availability_zone = var.net_info.pvtsubnets_info[0].pvtsubaz[count.index]
  cidr_block        = var.net_info.pvtsubnets_info[0].pvtsubcidr[count.index]
  tags = {
    Name = var.net_info.pvtsubnets_info[0].pvtsubname[count.index]
  }

}

resource "aws_route_table" "pubroutetable" {
  vpc_id = aws_vpc.awsvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "mypubroute"
  }
}

resource "aws_route_table" "pvtroutetable" {
  vpc_id = aws_vpc.awsvpc.id
   route {
     cidr_block     = "0.0.0.0/0"
     nat_gateway_id = aws_nat_gateway.natgw.id
   }
  tags = {
    Name = "mypvtroute"
  }
}

resource "aws_route_table_association" "pubsubroute" {
  count          = local.pubsub_count
  route_table_id = aws_route_table.pubroutetable.id
  subnet_id      = aws_subnet.pubsub[count.index].id
}
resource "aws_route_table_association" "pvtsubroute" {
  count          = local.pvtsub_count
  route_table_id = aws_route_table.pvtroutetable.id
  subnet_id      = aws_subnet.pvtsub[count.index].id

}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.awsvpc.id
}

resource "aws_nat_gateway" "natgw" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.pubsub[0].id
}
