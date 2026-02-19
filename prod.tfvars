net_info = {
  vpccidr = "198.168.0.0/16"
  vpcname = "prodmyvpc"
  pubsubnets_info = [{
    pubsubcidr = ["198.168.0.0/24", "198.168.1.0/24"]
    pubsubaz   = ["ap-south-1a", "ap-south-1b"]
    pubsubname = ["prodpubsub1", "prodpubsub2"]
  }]
  pvtsubnets_info = [{
    pvtsubcidr = ["198.168.2.0/24", "198.168.3.0/24"]
    pvtsubaz   = ["ap-south-1c", "ap-south-1a"]
    pvtsubname = ["prodpvtsub1", "prodpvtsub2"]
  }]
}