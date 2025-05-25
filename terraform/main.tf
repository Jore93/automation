provider "proxmox" {
  pm_api_url      = "https://pve.home.lan:8006/api2/json"
  pm_tls_insecure = true

  ssh {
    agent    = true
    username = "root"
  }
}

