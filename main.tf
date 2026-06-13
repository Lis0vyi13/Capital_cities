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
  count     = var.vm_count
  name      = "terraform-vm-node-${count.index + 1}"
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = var.vm_cpu
  memory    = var.vm_ram
  
  network_adapter {
    type = "nat"
  }
}