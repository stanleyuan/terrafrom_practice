variable "region" {
  default = "us-east-1"
}

# list
variable "cidrs" {
  default = []
}

#variable "cidrs" {
#type = "list"
#}

variable "amis" {
  type = map(string)

  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
  }
}

output "consul_server_asg_name" {
  value = module.consul.asg_name_servers
}

