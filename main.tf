resource "aws_vpc" "awsvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "myvpc"
  }
}
resource "aws_subnet" "pubsub" {
  count             = 2
  vpc_id            = aws_vpc.awsvpc.id
  availability_zone = ["ap-south-1a", "ap-south-1b"]
  cidr_block        = ["10.0.0.0/24","10.0.1.0/24"]
  tags = {
    Name = ["pubsub1","pubsub2"]
  }
}

resource "aws_subnet" "pvtsub"{
 count             = 2 
 vpc_id=aws_vpc.awsvpc.id
 availability_zone = ["ap-south-1c", "ap-south-1d"]
 cidr_block=         ["10.0.2.0/24","10.0.3.0/24"]
 tags={
  Name=["pvtsub1","pvtsub2"]
 }

}

resource "aws_route_table" "pubroutetable"{
  vpc_id = aws_vpc.awsvpc.id
  route = {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_internet_gateway.igw.id
  }
  tags={
    Name="mypubroute"
  }
}

resource "aws_route_table" "pvtroutetable"{
  vpc_id = aws_vpc.awsvpc.id
  route={
    cidr_block="0.0.0.0/0"
    nat_gateway_id=aws_internet_gateway.natgw.id
  }
  tags={
    Name="mypvtroute"
  }
}

resource "aws_route_table_association" "pubsubroute"{
  route_table_id = aws_route_table.pubroutetable.id
  subnet_id = aws_subnet.pubsub[*].id
}

resource "aws_route_table_association" "pvtsubroute"{
  route_table_id = aws_route_table.pvtroutetable.id
  subnet_id = aws_subnet.pvtsub[*].id
  
}

resource "aws_internet_gateway" "igw"{
  vpc_id = aws_vpc.awsvpc.id
}

resource "aws_nat_gateway" "natgw" {
  subnet_id = aws_subnet.pvtsub[0].id
}

