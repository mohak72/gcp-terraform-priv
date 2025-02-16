module "nlb" {
  source               = "./modules/nlb"
  project_id           = var.project_id
  region              = var.region
  nlb_name            = var.nlb_name
  backend_instances   = var.backend_instances
  health_check_config = var.health_check_config
  frontend_port       = var.frontend_port
}
