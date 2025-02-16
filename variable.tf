######################################
# 🔹 General GCP Project Variables
######################################

variable "project_id" {
  description = "The GCP Project ID where resources will be deployed"
  type        = string
}

variable "region" {
  description = "The GCP region where resources will be deployed"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone where GKE resources will be deployed"
  type        = string
  default     = "us-central1-a"
}

######################################
# 🔹 GKE Cluster Variables
######################################

variable "cluster_name" {
  description = "The name of the existing GKE cluster"
  type        = string
}

variable "gke_service_account" {
  description = "The GCP service account assigned to GKE nodes"
  type        = string
}

######################################
# 🔹 Block Storage (Persistent Disk)
######################################

variable "disk_name" {
  description = "Name of the Persistent Disk for GKE"
  type        = string
}

variable "disk_size_gb" {
  description = "Size of the Persistent Disk in GB"
  type        = number
  default     = 100
}

variable "disk_type" {
  description = "Type of Persistent Disk (pd-ssd, pd-standard, pd-balanced)"
  type        = string
  default     = "pd-ssd"
}

variable "pvc_name" {
  description = "The name of the Persistent Volume Claim (PVC)"
  type        = string
}

variable "pvc_storage_class" {
  description = "Storage class for the PVC"
  type        = string
  default     = "standard"
}

######################################
# 🔹 Istio Variables
######################################

variable "static_ip_name" {
  description = "The name of the reserved static IP for Istio Ingress"
  type        = string
}

variable "istio_namespace" {
  description = "The namespace where Istio will be installed"
  type        = string
  default     = "istio-system"
}

######################################
# 🔹 Pub/Sub Variables
######################################

variable "topic_name" {
  description = "The name of the Pub/Sub topic"
  type        = string
}

variable "subscription_name" {
  description = "The name of the Pub/Sub subscription"
  type        = string
}

variable "ack_deadline_seconds" {
  description = "The acknowledgment deadline in seconds for the subscription"
  type        = number
  default     = 10
}
