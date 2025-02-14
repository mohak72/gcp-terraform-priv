output "gke_disk_name" {
  description = "The created Persistent Disk for GKE"
  value       = module.block_storage.disk_name
}

output "gke_pvc_name" {
  description = "The created Persistent Volume Claim (PVC)"
  value       = module.block_storage.pvc_name
}

output "istio_static_ip" {
  description = "The reserved static IP for Istio Ingress"
  value       = module.istio.istio_static_ip
}

output "pubsub_topic_id" {
  description = "The created Pub/Sub topic ID"
  value       = module.pubsub.topic_name
}
