resource "google_compute_address" "istio_static_ip" {
  name    = "istio-ingress-ip"
  region  = var.region
  project = var.project_id
}
