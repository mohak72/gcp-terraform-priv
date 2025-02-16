output "disk_name" {
  description = "The name of the created disk"
  value       = google_compute_disk.gke_disk.name
}

output "pvc_name" {
  description = "The name of the Kubernetes PVC"
  value       = kubernetes_persistent_volume_claim.gke_pvc.metadata[0].name
}
