terraform {
  required_version = ">= 1.5"
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
    }
  }
}

provider "proxmox" {
  endpoint      = var.proxmox_endpoint
  insecure      = true
  api_token     = var.ansible_api_token
  ssh {
    agent = false
    username = "root"
    private_key = file(var.priv_key_file)
  }
}