resource "virtualbox_vm" "node" {
  count  = 2
  name   = "${format("packer-node-%02d", count.index + 1)}"
  image  = "/home/ieni/Tools/Packer/ubuntu/box/virtualbox/ubuntu-18.04-0.1.box"
  cpus   = 2
  memory = "512 mib"

  network_adapter {
    type = "nat"
  }

  #network_adapter {
  #type           = "bridged"
  #host_interface = "vboxnet1"
  #}
}

#output "IPAddr" {
#value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
#}

#output "IPAddr_2" {
#value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 2)
#}
