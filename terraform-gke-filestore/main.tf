module "filestore" {
  source             = "./modules/filestore"
  filestore_name     = var.filestore_name
  filestore_location = var.filestore_location
  filestore_tier     = var.filestore_tier
  filestore_capacity = var.filestore_capacity
  network            = var.network
}

module "storage" {
  source             = "./modules/storage"
  filestore_capacity = var.filestore_capacity
  filestore_ip       = module.filestore.filestore_ip
}

#module "k8s-app" {
#  source   = "./modules/k8s-app"
#  pvc_name = "filestore-pvc"
#}
