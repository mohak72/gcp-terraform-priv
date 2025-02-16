output "istio_static_ip" {
  description = "The reserved static IP for Istio Ingress"
  value       = google_compute_address.istio_static_ip.address
}
