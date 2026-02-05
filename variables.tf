variable "net_info" {
  type = object({
    vpccidr = string
    vpcname = string
    subnets_info = list(object({
      subcidr = list(string)
      subaz   = list(string)
      subname = list(string)
    }))
  })
  default = {
    vpccidr = "10.0.0.0/16"
    vpcname = "myvpc"
    subnets_info = [{
      subcidr = ["10.0.0.0/24", "10.1.0.0/24", "10.2.0.0/24", "10.3.0.0/24"]
      subaz   = ["ap-south-1a", "ap-south-1a", "ap-south-1a", "ap-south-1d"]
      subname = ["mywebsub", "appsub", "dbsub", "mylinuxserver"]
    }]
  }

}