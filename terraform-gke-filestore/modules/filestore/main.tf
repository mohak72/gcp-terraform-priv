resource "google_filestore_instance" "filestore" {
  name     = var.filestore_name
  location = var.filestore_location
  tier     = var.filestore_tier

  file_shares {
    capacity_gb = var.filestore_capacity
    name        = "vol1"
  }

  networks {
    network         = var.network
    modes           = ["MODE_IPV4"]
    reserved_ip_range = "10.10.0.0/29"
  }
}
