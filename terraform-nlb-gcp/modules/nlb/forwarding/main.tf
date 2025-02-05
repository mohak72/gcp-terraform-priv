resource "google_compute_forwarding_rule" "default" {
  name                  = "${var.nlb_name}-fr"
  project               = var.project_id
  region                = var.region
  load_balancing_scheme = "EXTERNAL"
  backend_service       = var.backend_service_id
  port_range            = var.frontend_port
}
