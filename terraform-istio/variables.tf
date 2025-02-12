variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "istio_namespace" {
  description = "Namespace where Istio will be installed"
  type        = string
  default     = "istio-system"
}

variable "static_ip_name" {
  description = "Name for the reserved static IP"
  type        = string
  default     = "istio-ingress-ip"
}

variable "static_ip_address" {
  description = "Reserved static IP for Istio"
  type        = string
  default     = ""
}
