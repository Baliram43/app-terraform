resource "aws_vpc" "awsvpc" {
  cidr_block = var.net_info.vpccidr
  tags = {
    Name = var.net_info.vpcname
  }
}
#all 4-subnets in one resources block
resource "aws_subnet" "subnets" {
  count             = length(var.net_info.subnets_info[0].subaz) #4=hardcoded
  vpc_id            = aws_vpc.awsvpc.id
  availability_zone = var.net_info.subnets_info[0].subaz[count.index]
  cidr_block        = var.net_info.subnets_info[0].subcidr[count.index]
  tags = {
    Name = var.net_info.subnets_info[0].subname[count.index]
  }
}






/* i want 4-subnets converted into 1-subnet resource block but not hardcoded, so we written above in terms of varibales
resource "aws_subnet" "websubnet" {
  vpc_id            = aws_vpc.awsvpc.id
  cidr_block        = ["10.0.0./24","10.1.0./24","10.2.0./24","10.3.0./24"]
  availability_zone = ["ap-south-1a","ap-south-1a","ap-south-1a","ap-south-1a"]
  tags = {
    Name = ["websub","appsub","dbsub","linuxsub"]
  }
} 
*/
