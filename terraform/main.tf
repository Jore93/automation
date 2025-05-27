terraform {
  required_version = ">= 0.14"
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
    }
  }
}

variable "api_token" {}
variable "proxmox_endpoint" {}

provider "proxmox" {
  endpoint      = var.proxmox_endpoint
  insecure      = true
  api_token     = var.api_token
  ssh {
    agent = false
    username = "root"
    private_key = file("~/.ssh/proxmox")
  }
}

