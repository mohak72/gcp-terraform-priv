resource "google_compute_disk" "gke_disk" {
  name  = var.disk_name
  type  = var.disk_type
  size  = var.disk_size_gb
  zone  = var.zone
}

output "disk_self_link" {
  value = google_compute_disk.gke_disk.self_link
}
