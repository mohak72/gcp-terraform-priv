######################################
# 🔹 General Outputs
######################################

output "project_id" {
  description = "The GCP Project ID where resources were deployed"
  value       = var.project_id
}

output "region" {
  description = "The GCP region where resources were deployed"
  value       = var.region
}

output "zone" {
  description = "The GCP zone where resources were deployed"
  value       = var.zone
}

######################################
# 🔹 Block Storage Outputs
######################################

output "gke_disk_name" {
  description = "The name of the created Persistent Disk"
  value       = module.block_storage.disk_name
}

output "gke_pvc_name" {
  description = "The name of the created Persistent Volume Claim (PVC)"
  value       = module.block_storage.pvc_name
}

######################################
# 🔹 Istio Outputs
######################################

output "istio_static_ip" {
  description = "The reserved static IP for Istio Ingress Gateway"
  value       = module.istio.istio_static_ip
}

######################################
# 🔹 Pub/Sub Outputs
######################################

output "pubsub_topic_id" {
  description = "The ID of the created Pub/Sub topic"
  value       = module.pubsub.topic_name
}

output "pubsub_subscription_id" {
  description = "The ID of the created Pub/Sub subscription"
  value       = module.pubsub.subscription_name
}
