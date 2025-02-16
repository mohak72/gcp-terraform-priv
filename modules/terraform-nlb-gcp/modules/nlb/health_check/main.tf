resource "google_compute_health_check" "default" {
  name    = var.health_check_name
  project = var.project_id

  http_health_check {
    port         = var.health_check_config.port
    request_path = var.health_check_config.request_path
  }

  check_interval_sec  = var.health_check_config.check_interval_sec
  timeout_sec         = var.health_check_config.timeout_sec
  healthy_threshold   = var.health_check_config.healthy_threshold
  unhealthy_threshold = var.health_check_config.unhealthy_threshold
}
