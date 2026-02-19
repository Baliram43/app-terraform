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


}