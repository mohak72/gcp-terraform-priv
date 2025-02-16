variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "zone" {
  description = "GCP Zone"
  type        = string
}

# Istio Module Variables
variable "static_ip_name" {
  description = "Static IP Name for Istio"
  default = ""
  type        = string
}

variable "istio_namespace" {
  description = "Namespace for Istio"
  default = ""
  type        = string
}

# Pub/Sub Module Variables
variable "topic_name" {
  description = "Name of the Pub/Sub topic"
  default = ""
  type        = string
}

variable "subscription_name" {
  description = "Name of the Pub/Sub subscription"
  default = ""
  type        = string
}

# Block Storage Module Variables
variable "disk_name" {
  description = "GKE Persistent Disk Name"
  default = ""
  type        = string
}

variable "disk_size_gb" {
  description = "Disk Size in GB"
  default = ""
  type        = number
}

variable "disk_type" {
  description = "Type of Persistent Disk (pd-ssd, pd-standard)"
  default = ""
  type        = string
}
