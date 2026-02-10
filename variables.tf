variable "net_info" {
  type = object({
    vpccidr = string
    vpcname = string
    pubsubnets_info = list(object({
      pubsubcidr = list(string)
      pubsubaz   = list(string)
      pubsubname = list(string)
    }))
    pvtsubnets_info = list(object({
      pvtsubcidr = list(string)
      pvtsubaz   = list(string)
      pvtsubname = list(string)
    }))
  })
  default = {
    vpccidr = "10.0.0.0/16"
    vpcname = "myvpc"
    pubsubnets_info = [{
      pubsubcidr = ["10.0.0.0/24", "10.0.1.0/24"]
      pubsubaz   = ["ap-south-1a", "ap-south-1b"]
      pubsubname = ["pubsub1", "pubsub2"]
    }]
    pvtsubnets_info = [{
      pvtsubcidr = ["10.0.2.0/24", "10.0.3.0/24"]
      pvtsubaz   = ["ap-south-1c", "ap-south-1a"]
      pvtsubname = ["pvtsub1", "pvtsub2"]
    }]
  }

}