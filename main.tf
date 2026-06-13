terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "node" {
  name      = "terraform-vm-node-1"
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "2048mib"

  network_adapter {
    type = "nat"
  } 
}

resource "virtualbox_vm" "node_2" {
  name   = "terraform-vm-node-2"
  image  = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus   = "2"
  memory = "2048mib"


  network_adapter {
    type   = "nat"
  }

  depends_on = [virtualbox_vm.node]
}