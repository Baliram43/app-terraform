net_info = {
  vpccidr = "172.16.0.0/16"
  vpcname = "devmyvpc"
  pubsubnets_info = [{
    pubsubcidr = ["172.16.0.0/24", "172.16.1.0/24"]
    pubsubaz   = ["ap-south-1a", "ap-south-1b"]
    pubsubname = ["devpubsub1", "devpubsub2"]
  }]
  pvtsubnets_info = [{
    pvtsubcidr = ["172.16.2.0/24", "172.16.3.0/24"]
    pvtsubaz   = ["ap-south-1c", "ap-south-1a"]
    pvtsubname = ["devpvtsub1", "devpvtsub2"]
  }]
}