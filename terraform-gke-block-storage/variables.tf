variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP Zone where the disk will be created"
  type        = string
  default     = "us-central1-a"
}

variable "gke_cluster_name" {
  description = "GKE cluster name"
  type        = string
}

variable "disk_name" {
  description = "The name of the persistent disk"
  type        = string
  default     = "gke-persistent-disk"
}

variable "disk_size_gb" {
  description = "Size of the disk in GB"
  type        = number
  default     = 100
}

variable "disk_type" {
  description = "Type of disk (pd-standard, pd-ssd, pd-balanced)"
  type        = string
  default     = "pd-ssd"
}

variable "pvc_name" {
  description = "Kubernetes PVC name"
  type        = string
  default     = "gke-pvc"
}

variable "pvc_storage_class" {
  description = "Kubernetes Storage Class for the PVC"
  type        = string
  default     = "standard"
}
