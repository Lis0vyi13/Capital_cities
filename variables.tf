variable "vm_count" {
  description = "Кількість віртуальних машин"
  type        = number
  default     = 2
}

variable "vm_cpu" {
  description = "Кількість ядер CPU"
  type        = number
  default     = 6
}

variable "vm_ram" {
  description = "Об'єм оперативної пам'яті в MB"
  type        = number
  default     = 4096
}