net_info = {
  vpccidr = "10.0.0.0/16"
  vpcname = "qamyvpc"
  pubsubnets_info = [{
    pubsubcidr = ["10.0.0.0/24", "10.0.1.0/24"]
    pubsubaz   = ["ap-south-1a", "ap-south-1b"]
    pubsubname = ["qapubsub1", "qapubsub2"]
  }]
  pvtsubnets_info = [{
    pvtsubcidr = ["10.0.2.0/24", "10.0.3.0/24"]
    pvtsubaz   = ["ap-south-1c", "ap-south-1a"]
    pvtsubname = ["qapvtsub1", "qapvtsub2"]
  }]
}