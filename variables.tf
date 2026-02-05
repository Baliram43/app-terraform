variable "vpccidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpcname" {
  type    = string
  default = "myvpc"
}

variable "websubcidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "websubaz" {
  type    = string
  default = "ap-soth-1a"
}

variable "websubname" {
  type    = string
  default = "mywebsub"
}

variable "appsubcidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "appsubaz" {
  type    = string
  default = "ap=south-1b"
}

variable "appsubname" {
  type    = string
  default = "appsub"
}

variable "dbsubcidr" {
  type    = string
  default = "10.0.2.0/24"

}

variable "dbsubaz" {
  type    = string
  default = "ap-south-1c"
}

variable "dbsubname" {
  type    = string
  default = "dbsub"
}

variable "serversubcidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "serversubaz" {
  type    = string
  default = "ap-south-1c"
}

variable "serversubname" {
  type    = string
  default = "mylinuxserver"
}