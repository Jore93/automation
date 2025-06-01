variable "ansible_priv_key_file" {
  type = string
  sensitive = true
}

variable "ansible_pub_key_file" {
  type = string
}

variable "ansible_api_token" {
  type = string
  sensitive = true
}

variable "root_api_token" {
  type = string
  sensitive = true
}

variable "proxmox_endpoint" {
  type = string
}

variable "priv_key_file" {
  type = string
  sensitive = true
}

variable "timeout" {
    type = number
}