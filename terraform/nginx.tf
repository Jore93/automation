resource "proxmox_virtual_environment_vm" "nginx_proxy" {
  description    = "Managed by Terraform. Nginx reverse proxy"
  node_name = "pve"
  name = "nginx-proxy"

  bios = "seabios"

  clone {
    vm_id = 100
    full = true
   }

  cpu {
    cores = 2
    sockets = 1
  }
  
  memory {
    dedicated = 1024
  }

  disk {
    interface      = "scsi0"
    datastore_id   = "local-lvm"
    size           = 10
    ssd            = true
  }

  initialization {
    ip_config {
      ipv4 {
        address = "10.0.0.2/29"
        gateway = "10.0.0.1"
      }
    }
  }

  network_device {
    bridge = "DMZVNet"
    vlan_id = 999
  }

  timeout_create = 300
  timeout_clone = 300
  timeout_migrate = 300

  tags = [ "terraform", "nginx" ]
}