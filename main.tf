resource "aws_vpc" "awsvpc" {
  cidr_block = var.vpccidr
  tags = {
    Name = var.vpcname
  }
}

resource "aws_subnet" "websubnet" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = var.websubcidr
  availability_zone = var.websubaz
  tags = {
    Name = var.websubname
  }
}

resource "aws_subnet" "appsubnet" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = var.appsubcidr
  availability_zone = var.appsubaz
  tags = {
    Name = var.appsubname
  }
}

resource "aws_subnet" "dbsubnet" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = var.dbsubcidr
  availability_zone = var.dbsubaz
  tags = {
    Name = var.dbsubname
  }
}

resource "aws_subnet" "seversub" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = var.serversubcidr
  availability_zone = var.serversubaz
  tags = {
    Name = var.serversubname
  }
}