module "health_check" {
  source             = "./health_check"
  project_id        = var.project_id
  health_check_name = "${var.nlb_name}-hc"
  health_check_config = var.health_check_config
}

module "backend_service" {
  source             = "./backend"
  project_id        = var.project_id
  region           = var.region
  backend_instances = var.backend_instances
  health_check_id   = module.health_check.health_check_id
}

module "forwarding_rule" {
  source            = "./forwarding"
  project_id       = var.project_id
  region          = var.region
  nlb_name        = var.nlb_name
  frontend_port   = var.frontend_port
  backend_service_id = module.backend_service.backend_service_id
}
