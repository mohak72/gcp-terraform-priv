variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "topic_name" {
  description = "Name of the Pub/Sub topic"
  type        = string
}

variable "subscription_name" {
  description = "Name of the Pub/Sub subscription"
  type        = string
}

variable "ack_deadline_seconds" {
  description = "Acknowledgment deadline for subscriptions"
  type        = number
  default     = 10
}

variable "message_retention_duration" {
  description = "How long to retain unacknowledged messages (e.g., 7d for 7 days)"
  type        = string
  default     = "604800s"
}

variable "enable_message_ordering" {
  description = "Enable message ordering in Pub/Sub"
  type        = bool
  default     = false
}

variable "push_endpoint" {
  description = "Endpoint URL for push subscription (optional)"
  type        = string
  default     = ""
}
