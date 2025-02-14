terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

# 📌 Pre-existing GKE Cluster Module (DO NOT REMOVE)
module "gkefit_r_central1" {
  source         = "../../gke-cluster-module"
  project_id     = var.project_id
  cluster_name   = var.cluster_name
  region         = var.region
  service_account = var.gke_service_account
}

# 🌍 Block Storage Module (Persistent Disk for GKE)
module "block_storage" {
  source             = "./modules/block_storage"
  project_id         = var.project_id
  region             = var.region
  zone               = var.zone
  disk_name          = var.disk_name
  disk_size_gb       = var.disk_size_gb
  disk_type          = var.disk_type
  pvc_name           = var.pvc_name
  pvc_storage_class  = var.pvc_storage_class
}

# 🚀 Istio Module (Service Mesh with Static IP)
module "istio" {
  source          = "./modules/istio"
  project_id      = var.project_id
  region          = var.region
  static_ip_name  = var.static_ip_name
  istio_namespace = var.istio_namespace
}

# 📢 Pub/Sub Module (Messaging System)
module "pubsub" {
  source             = "./modules/pubsub"
  project_id         = var.project_id
  topic_name         = var.topic_name
  subscription_name  = var.subscription_name
  ack_deadline_seconds = var.ack_deadline_seconds
}
