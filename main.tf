terraform {
  required_providers {
  virtualbox = {
      source  = "shekeriev/virtualbox"
      version = "0.0.4"
    }
  }
}

resource "virtualbox_vm" "node" {
  name   = "node"
  image  = var.vm_image
  cpus   = var.vm_cpus
  memory = var.vm_memory

  network_adapter {
    type           = "hostonly"
    host_interface = "VirtualBox Host-Only Ethernet Adapter"
  }
}
