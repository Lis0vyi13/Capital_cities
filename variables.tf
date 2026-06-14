variable "vm_name_prefix" {
  type        = string
  default     = "node-"
}

variable "vm_image" {
  type        = string
  default     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
}

variable "vm_cpus" {
  type        = number
  default     = 6
}

variable "vm_memory" {
  type        = string
  default     = "4096 mib"
}

