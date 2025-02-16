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

variable "network" {
  description = "VPC network name"
  type        = string
}

variable "gke_cluster_name" {
  description = "Name of the existing GKE cluster"
  type        = string
}

variable "filestore_name" {
  description = "Name of the Filestore instance"
  type        = string
}

variable "filestore_tier" {
  description = "Filestore tier"
  type        = string
}

variable "filestore_capacity" {
  description = "Filestore capacity in GB"
  type        = number
}

variable "filestore_location" {
  description = "Filestore region"
  type        = string
}
