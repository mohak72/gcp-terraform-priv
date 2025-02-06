module "block_storage" {
  source         = "./modules/block_storage"
  project_id     = var.project_id
  region         = var.region
  zone           = var.zone
  disk_name      = var.disk_name
  disk_size_gb   = var.disk_size_gb
  disk_type      = var.disk_type
  pvc_name       = var.pvc_name
  pvc_storage_class = var.pvc_storage_class
}
