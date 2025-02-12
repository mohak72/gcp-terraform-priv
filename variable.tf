variable "project_id" { type = string }
variable "region" { type = string }
variable "zone" { type = string }

# Block Storage Variables
variable "disk_name" { type = string }
variable "disk_size_gb" { type = number }
variable "disk_type" { type = string }
variable "pvc_name" { type = string }
variable "pvc_storage_class" { type = string }

# Istio Variables
variable "static_ip_name" { type = string }
variable "istio_namespace" { type = string }
