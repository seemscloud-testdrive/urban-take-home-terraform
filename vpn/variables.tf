variable "project" { type = string }
variable "region" { type = string }
variable "network" {
  type = object({
    id = string
  })
}

variable "name" { type = string }
variable "machine_type" { type = string }
variable "zone" { type = string }
variable "tags" { type = list(string) }
variable "static_ip" { type = string }
variable "cidr" { type = string }
variable "address_type" { type = string }
variable "desired_status" { type = string }
variable "boot_image" { type = string }
variable "boot_disk_size" { type = number }
variable "boot_disk_type" { type = string }
variable "boot_disk_auto_delete" { type = bool }
variable "preemptible" { type = bool }
variable "automatic_restart" { type = bool }