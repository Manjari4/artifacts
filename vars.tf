variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "container_group_name" {
  type = string
}

variable "restart_policy" {
  type = string
}

variable "container_name" {
  type = string
}

variable "cpu_cores" {
  type        = number
  description = "The number of CPU cores to allocate to the container."
  default     = 1
}

variable "memory_in_gb" {
  type        = number
  description = "The amount of memory to allocate to the container in gigabytes."
  default     = 2
}

variable "image" {
  type = string
}

variable "port" {
  type = string
}