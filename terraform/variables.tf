variable "vm_name" {
  type        = string
  description = "Virtual Machine name"
}

variable "image_id" {
  type        = string
  description = "Image identificator"
  default     = "fd82tb3u07rkdkfte3dn"
}

variable "cidr_blocks" {
  type = list(list(string))
  description = ""
}

variable "labels" {
  type = map(string)
  description = ""
}

variable "resources" {
  type = object({
    disk = number
    cpu = number
    memory = number
  })
}

variable "listener_port" {
  type = number
  description = "listener port"
}

variable "nlb_healthcheck" {
  type = object({
    name = string
    port = number
    path = string
  })
}

variable "public_ssh_key_path" {
  type = string
  description = "path to public ssh key file"
}

variable "az" {
  type = list(string)
  description = "List of availability zones"
}

variable "platformid" {
  type = list(string)
  description = "List of platform id"
}

variable "vm_count" {
  type = number
  description = "Count of virtual machines"
}

variable "image_family" {
  type = string
  description = "Virtual Machine Image"
  default = "centos-7"
}

variable "token_val" {
  type = string
}

variable "folder_id_val" {
  type = string
}

variable "cloud_id_val" {
  type = string
}
