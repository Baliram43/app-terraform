resource "aws_vpc" "awsvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "websubnet" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-soth-1a"
  tags = {
    Name = "mywebsub"
  }
}

resource "aws_subnet" "appsubnet" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "appsub"
  }
}

resource "aws_subnet" "dbsubnet" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1c"
  tags = {
    Name = "dbsub"
  }
}

resource "aws_subnet" "seversub" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap=south-1c"
  tags = {
    Name = "mylinuxserver"
  }
}