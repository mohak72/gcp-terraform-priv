resource "google_compute_backend_service" "default" {
  name          = "backend-service"
  project       = var.project_id
  protocol      = "TCP"
  timeout_sec   = 30
  health_checks = [var.health_check_id]

  backend {
    group = element(var.backend_instances, 0)  # Add multiple if needed
  }
}
