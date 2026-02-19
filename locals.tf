
locals {
  pubsub_count = length(var.net_info.pubsubnets_info[0].pubsubaz)
}

locals {
  pvtsub_count = length(var.net_info.pvtsubnets_info[0].pvtsubaz)
}