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

variable "nlb_name" {
  description = "The name of the Network Load Balancer"
  type        = string
  default     = "my-nlb"
}

variable "backend_instances" {
  description = "List of instance group URLs for backend services"
  type        = list(string)
}

variable "health_check_config" {
  description = "Configuration for the health check"
  type = object({
    check_interval_sec  = number
    timeout_sec         = number
    healthy_threshold   = number
    unhealthy_threshold = number
    port                = number
    request_path        = string
  })
  default = {
    check_interval_sec  = 5
    timeout_sec         = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    port                = 80
    request_path        = "/"
  }
}

variable "frontend_port" {
  description = "Port for the frontend load balancer"
  type        = number
  default     = 80
}
